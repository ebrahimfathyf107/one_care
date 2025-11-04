import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:go_router/go_router.dart';
import '../../features/auth/ui/screens/auth_view.dart';
import '../../features/home/ui/screen/bottom_nav_bar.dart';
import '../../features/onboarding/ui/screens/onboarding_view.dart';
import '../../features/settings/ui/screens/about_us_view.dart';
import '../../features/settings/ui/screens/contact_us_view.dart';
import '../../features/settings/ui/screens/privacy_policy_view.dart';
import '../../features/settings/ui/screens/return_policy_view.dart';
import '../../features/settings/ui/screens/settings_view.dart';
import '../customs/custom_app_web_view.dart';

abstract class AppRouter {
  static GoRouter getRouter(bool isFirstLogin) {
    return GoRouter(
      initialLocation: 
     isFirstLogin ?  BottomNavBarController.routeName:OnBoardingView.routeName ,
      routes: [
        GoRoute(
          path: OnBoardingView.routeName,
          builder: (context, state) => const OnBoardingView(),
        ),
        GoRoute(
          path: BottomNavBarController.routeName,
          builder: (context, state) {
            final timestamp =state.extra as int?;
            return BottomNavBarController(
              rebuildKey: timestamp,
            );
            },
        ),
        GoRoute(
          path: AuthView.routeName,
          builder: (context, state) => const AuthView(),
        ),
        GoRoute(
          path: SettingsView.routeName,
          builder: (context, state) => const SettingsView(),
        ),
        GoRoute(
          path: CustomAppWebView.rotrName,
          builder: (context, state) {
            final uri = state.extra as WebUri?;
            return CustomAppWebView(uri: uri);
          },
        ),
        GoRoute(
            path: AboutUsView.routeName,
            builder: (context, state) => AboutUsView()),
        GoRoute(
            path: PrivacyPolicyViews.routeName,
            builder: (context, state) => PrivacyPolicyViews()),
        GoRoute(
            path: ReturnPolicyView.routeName,
            builder: (context, state) => ReturnPolicyView()),
        GoRoute(
            path: ContactUsView.routeName,
            builder: (context, state) => ContactUsView()),
      ],
    );
  }
}
