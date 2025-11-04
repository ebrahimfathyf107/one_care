import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:one_care/core/helpers/clean_title.dart';
import '../../../../core/customs/custom_loading.dart';
import '../../../../core/helpers/app_constants.dart';
import '../../../../core/helpers/change_link_language.dart';
import '../../../../core/theme/app_colors.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key, this.rebuildKey});
  final int? rebuildKey;

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView>
    with AutomaticKeepAliveClientMixin<HomeView> {
  bool canGoBack = false;
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      key: ValueKey(widget.rebuildKey),
      backgroundColor: Colors.white,
      body: AppWebViewerView(
        uri: WebUri(
          changeLinkLanguage(name: AppConstants.baseLink, context: context),
        ),
        canGoBack: (value) {
          setState(() {
            canGoBack = value;
          });
        },
        initialWebView: null,
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}

class AppWebViewerView extends StatefulWidget {
  const AppWebViewerView({
    super.key,
    this.uri,
    this.initialWebView,
    this.canGoBack,
  });
  final WebUri? uri;
  final HeadlessInAppWebView? initialWebView;
  final ValueChanged<bool>? canGoBack;
  @override
  State<AppWebViewerView> createState() => _AppWebViewerViewState();
}

class _AppWebViewerViewState extends State<AppWebViewerView> {
  ///
  late String? title;

  ///
  InAppWebViewController? _controller;

  ///
  late bool _isLoading;
  late bool _canGoBack;

  ///
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
    _controller?.dispose();
    super.dispose();
  }

  void onLoadStart(InAppWebViewController controller, WebUri? webUri) async {
    setState(() {
      _isLoading = true;
    });
    _controller = controller;
    _canGoBack = await controller.canGoBack();
    widget.canGoBack?.call(_canGoBack);
    setState(() {});
  }

  void onLoadStop(InAppWebViewController controller, WebUri? webUri) async {
    _controller = controller;
    _canGoBack = await controller.canGoBack();
    widget.canGoBack?.call(_canGoBack);
    if (_canGoBack) {
      await controller.injectCSSCode(
        source: '''
      .whb-main-header {
        display: none !important;
      }
    ''',
      );
    }
    await controller.injectCSSCode(
      source: '''
                  .wd-toolbar {
                    display: none !important;
                  }
                ''',
    );

    setState(() {
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    String? cleanedTitle = cleanTitle(title);

    return Scaffold(
      backgroundColor: AppColors.secondary,
      appBar: _canGoBack
          ? AppBar(
              backgroundColor: AppColors.secondary,
              title: Text(
                cleanedTitle ?? "",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              leading: IconButton(
                onPressed: () {
                  _controller?.goBack();
                },
                icon: Icon(Icons.arrow_back_ios, color: Colors.white),
              ),
            )
          : null,
      body: SafeArea(
        child: Stack(
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

              onWebViewCreated: (controller) async {
                _controller = controller;
              },
              onLoadStart: onLoadStart,
              onLoadStop: onLoadStop,
            ),
            if (_isLoading) CustomLoading(),
          ],
        ),
      ),
    );
  }
}
