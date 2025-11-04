import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';
import 'package:one_care/core/helpers/spacing.dart';

import '../../../../core/customs/common_text_widget.dart';
import '../../../../core/helpers/app_assets.dart';
import '../../../../core/helpers/app_constants.dart';
import '../../../../core/helpers/shared_pref_helper.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../auth/ui/screens/auth_view.dart';

class OnBoardingViewBody extends StatefulWidget {
  const OnBoardingViewBody({super.key});

  @override
  State<OnBoardingViewBody> createState() => _OnBoardingViewBodyState();
}

class _OnBoardingViewBodyState extends State<OnBoardingViewBody> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  final List<Map<String, String>> _onboardingData = [
    {
      "image": Assets.imagesSvgOnBoard1,
      "title": "متجرك الإلكتروني المتكامل",
      "text":
          "اكتشف عالماً من التسوق الذكي مع آلاف المنتجات في مكان واحد. تسوق بأمان وراحة من منزلك",
    },
    {
      "image": Assets.imagesSvgOnBoard2,
      "title": "منتجات أصلية ومضمونة",
      "text":
          "نضمن لك جودة عالية وأسعار تنافسية مع ضمان الأصالة من أفضل الماركات العالمية والمحلية",
    },
    {
      "image": Assets.imagesSvgOnBoard3,
      "title": "توصيل سريع ومجاني",
      "text":
          "استمتع بخدمة التوصيل السريع إلى باب منزلك مع إمكانية الدفع عند الاستلام وضمان الاسترداد",
    },
  ];

  void _onNextPressed() {
    if (_currentPage < 2) {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    } else {
      SharedPrefHelper.setData(AppConstants.isFristLogin, true);
      GoRouter.of(context).go(AuthView.routeName);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
     
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              AppColors.primary.withOpacity(0.1),
              Colors.white,
              AppColors.secondary.withOpacity(0.05),
            ],
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              // Header with Skip Button
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 15,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // App Logo or Title
                    CommonTextWidget(
                      text: "OneCare",
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: AppColors.primary,
                    ),
                    // Skip Button
                    if (_currentPage < 2)
                      Container(
                        decoration: BoxDecoration(
                          color: AppColors.secondary.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: TextButton(
                          onPressed: () {
                            SharedPrefHelper.setData(
                              AppConstants.isFristLogin,
                              true,
                            );
                            GoRouter.of(context).go(AuthView.routeName);
                          },
                          child: CommonTextWidget(
                            fontSize: 14,
                            text: 'تخطي',
                            fontWeight: FontWeight.w600,
                            color: AppColors.secondary,
                          ),
                        ),
                      ),
                  ],
                ),
              ),

              // Page View Content
              Expanded(
                child: PageView.builder(
                  controller: _pageController,
                  onPageChanged: (index) {
                    setState(() => _currentPage = index);
                  },
                  itemCount: _onboardingData.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          // Animated Container for Image
                          AnimatedContainer(
                            duration: const Duration(milliseconds: 300),
                            height: MediaQuery.of(context).size.height * 0.3,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: AppColors.primary.withOpacity(0.1),
                                  blurRadius: 20,
                                  offset: const Offset(0, 10),
                                ),
                              ],
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Lottie.asset(
                                _onboardingData[index]["image"]!,
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),

                          const SizedBox(height: 40),

                          // Title
                          CommonTextWidget(
                            textAlign: TextAlign.center,
                            textDirection: TextDirection.rtl,
                            text: _onboardingData[index]["title"]!,
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: AppColors.secondary,
                          ),

                          const SizedBox(height: 16),

                          // Description
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: CommonTextWidget(
                              textAlign: TextAlign.center,
                              textDirection: TextDirection.rtl,
                              text: _onboardingData[index]["text"]!,
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Colors.grey.shade600,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),

              // Bottom Section with Indicators and Navigation
              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    // Page Indicators
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        _onboardingData.length,
                        (index) => AnimatedContainer(
                          duration: const Duration(milliseconds: 300),
                          margin: const EdgeInsets.symmetric(horizontal: 4),
                          width: _currentPage == index ? 24 : 8,
                          height: 8,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            color: _currentPage == index
                                ? AppColors.secondary
                                : AppColors.secondary.withOpacity(0.3),
                          ),
                        ),
                      ),
                    ),

                    vGap(10),

                    // Navigation Buttons
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Previous Button
                        if (_currentPage > 0)
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: AppColors.primary.withOpacity(0.3),
                              ),
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: IconButton(
                              onPressed: () {
                                _pageController.previousPage(
                                  duration: const Duration(milliseconds: 300),
                                  curve: Curves.easeInOut,
                                );
                              },
                              icon: Icon(
                                Icons.arrow_back_ios,
                                color: AppColors.primary,
                                size: 20,
                              ),
                            ),
                          )
                        else
                          const SizedBox(width: 50),

                        // Progress Text
                        CommonTextWidget(
                          text:
                              "${_currentPage + 1} / ${_onboardingData.length}",
                          fontSize: 14,
                          color: AppColors.secondary,
                          fontWeight: FontWeight.w500,
                        ),

                        // Next Button
                        Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [AppColors.secondary, AppColors.primary],
                            ),
                            borderRadius: BorderRadius.circular(25),
                            boxShadow: [
                              BoxShadow(
                                color: AppColors.secondary.withOpacity(0.3),
                                blurRadius: 10,
                                offset: const Offset(0, 5),
                              ),
                            ],
                          ),
                          child: IconButton(
                            onPressed: _onNextPressed,
                            icon: Icon(
                              _currentPage == _onboardingData.length - 1
                                  ? Icons.check
                                  : Icons.arrow_forward_ios,
                              color: Colors.white,
                              size: 40,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
