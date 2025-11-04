import 'dart:collection';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:go_router/go_router.dart';
import 'package:one_care/core/customs/common_text_widget.dart';
import 'package:one_care/core/customs/custom_loading.dart';
import 'package:one_care/core/helpers/clean_title.dart';

import '../../../../core/helpers/code_resources.dart';
import '../../features/home/ui/screen/bottom_nav_bar.dart';
import '../theme/app_colors.dart';


String previousState = "unknown";

class CustomAppWebView extends StatefulWidget {
  const CustomAppWebView({
    super.key,
    this.uri,
    this.initialWebView,
    this.rebuildKey,
  });
  final int? rebuildKey;
  final WebUri? uri;
  final HeadlessInAppWebView? initialWebView;
  static const String rotrName = "/customAppWebView";
  @override
  State<CustomAppWebView> createState() => _CustomAppWebViewState();
}

class _CustomAppWebViewState extends State<CustomAppWebView> {
  late String? title;

  late InAppWebViewController _controller;

  late bool _isLoading;
  late bool _canGoBack;

  @override
  void initState() {
    _isLoading = true;
    _canGoBack = false;
    title = "";
    widget.initialWebView?.run();

    super.initState();
  }

  ///
  @override
  void dispose() {
    super.dispose();
  }

  void onLoadStart(InAppWebViewController controller, WebUri? webUri) async {
    if (!mounted) return;
    setState(() {
      _isLoading = true;
    });
    _controller = controller;
    _canGoBack = await controller.canGoBack();
    if (mounted) {
      setState(() {
        _canGoBack;
      });
    }
  }

  void onLoadStop(InAppWebViewController controller, WebUri? webUri) async {
    if (!mounted) return;
    _controller = controller;
    _canGoBack = await controller.canGoBack();
    if (mounted) {
      setState(() {
        _canGoBack;
      });
    }
    checkPageContent(_controller, context);
    try {
      await controller.injectCSSCode(source: CodesResources.hideAppBarCSS);
      await controller.injectCSSCode(source: CodesResources.hideElementsJS);
      await controller.injectCSSCode(source: CodesResources.hideNotice1Css);
      await controller.evaluateJavascript(source: CodesResources.hideNotice2Js);
      await controller.evaluateJavascript(
          source: CodesResources.hideElementsJS);
      await controller.evaluateJavascript(
          source: CodesResources.hideMyAcountTextJs);
          await controller.injectCSSCode(source: CodesResources.hideGoogleLoginCSS);
    } catch (e) {
      print("Error injecting ******scripts: $e");
    }

    if (mounted) {
      setState(() {
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) { 
  
  String? cleanedTitle = cleanTitle( title);
    return Scaffold(  
      key: ValueKey(widget.rebuildKey),
      backgroundColor: AppColors.primaryLight,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: AppColors.white,
        ),
        backgroundColor: AppColors.secondary,
        title: CommonTextWidget(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: AppColors.white,
            text: cleanedTitle ?? ""),
        leading: _canGoBack
            ? IconButton(
                onPressed: () {
                  _controller.goBack();
                },
                icon: Icon(Icons.arrow_back_ios),
              )
            : null,
      ),
      body: Stack(
        children: [
          InAppWebView(
            initialUrlRequest: URLRequest(url: widget.uri),
            headlessWebView: widget.initialWebView,
            initialSettings: InAppWebViewSettings(
              javaScriptEnabled: true,
              cacheEnabled: true,
              javaScriptCanOpenWindowsAutomatically: false,
              mediaPlaybackRequiresUserGesture: true,
              useShouldInterceptRequest: false,
              useShouldOverrideUrlLoading: false,
            ),
            onTitleChanged: (controller, title) {
              setState(() {
                this.title = title;
              });
            },
            initialUserScripts: UnmodifiableListView(
              [
                UserScript(
                  source: CodesResources.hideAppBarCSS,
                  injectionTime: UserScriptInjectionTime.AT_DOCUMENT_START,
                ),
                UserScript(
                  source: CodesResources.hideElementsJS,
                  injectionTime: UserScriptInjectionTime.AT_DOCUMENT_END,
                ),
              ],
            ),
            onWebViewCreated: (controller) async {
              _controller = controller;
            },
            onLoadStart: onLoadStart,
            onLoadStop: onLoadStop,
          ),
          if (_isLoading) CustomLoading()
        ],
      ),
    );
  }
}

void checkPageContent(
    InAppWebViewController webViewController, BuildContext context) async {
String currentState = await webViewController.evaluateJavascript(source: """
  (function() {
    var loginTitle = document.querySelector('h2.wd-login-title');
    if (loginTitle) {
      var text = loginTitle.innerText.trim();
      if (text === 'Login' || text === 'تسجيل الدخول') {
        return 'logout';
      }
    }
    if (document.querySelector('.woocommerce-MyAccount-title.entry-title')) {
      return 'login';
    }
    return 'unknown';
  })();
""") ?? 'unknown';

  // إذا تغيرت الصفحة من تسجيل الدخول إلى تسجيل الخروج أو العكس، نقوم بإعادة التشغيل
  if ((previousState == 'login' && currentState == 'logout') ||
      (previousState == 'logout' && currentState == 'login')) {
        print("*****Current State: $currentState");
    print("*****Previous State: $previousState");
    print('🔄 تغيير الصفحة! إعادة تشغيل التطبيق...');
    previousState = currentState;
    GoRouter.of(context).go(BottomNavBarController.routeName,
        extra: DateTime.now().millisecondsSinceEpoch);
  } else {
    previousState = currentState;
          print("*****Current State: $currentState");
    print("*****Previous State: $previousState");
    print('⚡ لا يوجد تغيير في الصفحة');
  }
}
