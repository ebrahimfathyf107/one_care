
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';



import '../../../../core/customs/custom_loading.dart';
import '../../../../core/customs/custom_text_button.dart';
import '../../../../core/helpers/app_constants.dart';
import '../../../../core/helpers/code_resources.dart';
import '../../../../core/helpers/shared_pref_helper.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../generated/l10n.dart';
import '../../../home/ui/screen/bottom_nav_bar.dart';

class AuthView extends StatefulWidget {
  const AuthView({super.key});
  static const String routeName = '/auth';
  @override
  State<AuthView> createState() => _AuthViewState();
}

class _AuthViewState extends State<AuthView> {
  late InAppWebViewController _controller;
  late bool _isLoading;
  @override
  void initState() {
    _isLoading = true;
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  void onLoadStart(InAppWebViewController controller, WebUri? webUri) async {
    setState(() {
      _isLoading = true;
    });
    _controller = controller;
  }
void onLoadStop(InAppWebViewController controller, WebUri? webUri) async {
  _controller = controller;
  await controller.injectCSSCode(source: CodesResources.hideAppBarCSS);
  await controller.injectCSSCode(source: CodesResources.hideGoogleLoginCSS);

  final hasElement = await controller.evaluateJavascript(
    source: '''
    (function() {
      const element = document.querySelector('.elementor-image-carousel-wrapper');
      return element !== null;
    })();
    ''',
  );

  if (hasElement == true && mounted) {
    SharedPrefHelper.setData(AppConstants.isAuth, true);
    print('==============================✅ Carousel detected — homepage loaded');
    GoRouter.of(context).go(BottomNavBarController.routeName);
    return;
  } else {
    setState(() {
      _isLoading = false;
    });
  }
}


  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.white,
      child: SafeArea(
        child: Stack(
          children: [
            InAppWebView(
              initialUrlRequest:
                  URLRequest(url: WebUri(AppConstants.myAccountEnLink)),
              initialSettings: InAppWebViewSettings(
                javaScriptEnabled: true,
                cacheEnabled: true,
                javaScriptCanOpenWindowsAutomatically: false,
                mediaPlaybackRequiresUserGesture: true,
                useShouldInterceptRequest: false,
                useShouldOverrideUrlLoading: false,
              ),
              onWebViewCreated: (controller) async {
                _controller = controller;
              },
              onLoadStart: onLoadStart,
              onLoadStop: onLoadStop,
            ),
            Positioned(
              bottom: 20.h, 
              left: 0,
              right: 0,
              child: Center(
                child: CustomButton(
                  
                  text: S.of(context).skip,
                  color: AppColors.secondary,
                  textColor: AppColors.white,
                  
                  onTap: () {
                    GoRouter.of(context).go(BottomNavBarController.routeName);
                  },
                ),
              ),
            ),
            if (_isLoading) CustomLoading(),
          ],
        ),
      ),
    );
  }
}