import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:one_care/features/home/ui/screen/home_view.dart';
import 'package:one_care/features/settings/ui/screens/settings_view.dart';

import '../../../../core/helpers/app_assets.dart';
import '../../../../core/helpers/app_constants.dart';
import '../../../../core/helpers/change_link_language.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../generated/l10n.dart';

import '../../../../core/customs/custom_app_web_view.dart';

class BottomNavCubit extends Cubit<int> {
  BottomNavCubit() : super(0);

  void changeTab(int newIndex) => emit(newIndex);
}

class BottomNavBarController extends StatelessWidget {
  const BottomNavBarController({super.key, this.rebuildKey});
  static const String routeName = "/bottomNavBar";
  final int? rebuildKey;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BottomNavCubit(),
      child: BlocBuilder<BottomNavCubit, int>(
        builder: (context, index) {
          return Scaffold(
            backgroundColor: AppColors.primaryLight,
            bottomNavigationBar: _BottomNavBar(index: index),
            body: _BottomNavBody(index: index, rebuildKey: rebuildKey),
          );
        },
      ),
    );
  }
}

class _BottomNavBar extends StatelessWidget {
  final int index;
  const _BottomNavBar({required this.index});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: index,
      onTap: (value) => context.read<BottomNavCubit>().changeTab(value),
      selectedItemColor: AppColors.secondary,
      unselectedItemColor: AppColors.graydark,
      selectedLabelStyle: TextStyle(
        fontSize: 12.sp,
        fontWeight: FontWeight.bold,
      ),
      unselectedLabelStyle: TextStyle(
        fontSize: 10.sp,
        fontWeight: FontWeight.normal,
      ),
      backgroundColor: Colors.white.withOpacity(0.95),
      elevation: 10,
      items: [
        bottomNavBarItem(Icons.home, S.of(context).home),
        bottomNavBarItem(Icons.shopping_cart, S.of(context).cart),
        bottomNavBarItem(Icons.store, S.of(context).shop),
        bottomNavBarItem(Assets.imagesSvgAiIcon, S.of(context).Ai),
        bottomNavBarItem(Icons.settings, S.of(context).settings),
      ],
    );
  }
}

class _BottomNavBody extends StatefulWidget {
  final int index;
  const _BottomNavBody({required this.index, this.rebuildKey});
  final int? rebuildKey;

  @override
  State<_BottomNavBody> createState() => _BottomNavBodyState();
}

class _BottomNavBodyState extends State<_BottomNavBody> {
  // This counter changes every time user navigates TO the cart tab (index 1),
  // forcing a new Key (thus a rebuild / fresh state) ONLY for the cart screen.
  int _cartVersion = 0;

  @override
  void didUpdateWidget(covariant _BottomNavBody oldWidget) {
    super.didUpdateWidget(oldWidget);
    // If we are switching to the cart tab (index 1) from a different tab,
    // increment the version to rebuild that widget only.
    if (widget.index == 1 && oldWidget.index != 1) {
      setState(() {
        _cartVersion++; // triggers new key for cart screen
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return IndexedStack(
      index: widget.index,
      children: [
        HomeView(rebuildKey: widget.rebuildKey),
        // Cart screen: assign a ValueKey that changes only when entering cart.
        CustomAppWebView(
          key: ValueKey('cart-${_cartVersion.toString()}'),
          uri: WebUri(
            changeLinkLanguage(name: AppConstants.cart, context: context),
          ),
          rebuildKey: widget.rebuildKey,
        ),
        CustomAppWebView(
          uri: WebUri(
            changeLinkLanguage(name: AppConstants.shop, context: context),
          ),
          rebuildKey: widget.rebuildKey,
        ),
        CustomAppWebView(
          uri: WebUri(
            changeLinkLanguage(name: AppConstants.ai, context: context),
          ),
        ),
        const SettingsView(),
      ],
    );
  }
}

BottomNavigationBarItem bottomNavBarItem(dynamic icon, String title) {
  Widget buildIcon(dynamic icon, double size, Color color) {
    if (icon is IconData) {
      return Icon(icon, size: size, color: color);
    } else if (icon is String) {
      return SvgPicture.asset(icon, width: size, height: size, color: color);
    }
    throw ArgumentError('icon must be IconData or a valid asset image path');
  }

  return BottomNavigationBarItem(
    activeIcon: Container(
      padding: EdgeInsets.all(6.w),
      decoration: BoxDecoration(
        color: AppColors.secondary,
        borderRadius: BorderRadius.circular(20.r),
        boxShadow: [
          BoxShadow(
            color: AppColors.primary.withOpacity(0.3),
            blurRadius: 8,
            spreadRadius: 1,
          ),
        ],
      ),
      child: buildIcon(icon, 26.w, Colors.white),
    ),
    icon: buildIcon(icon, 24.w, AppColors.graydark),
    label: title,
  );
}
