import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:go_router/go_router.dart';
import 'package:one_care/features/settings/ui/widgets/settings_item.dart';
import '../../../../core/customs/common_text_widget.dart';
import '../../../../core/helpers/app_assets.dart';
import '../../../../core/helpers/app_constants.dart';
import '../../../../core/helpers/change_link_language.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../generated/l10n.dart';
import '../../../../core/cubit/language/language_cubit.dart';
import '../../../../core/customs/custom_app_web_view.dart';
import '../screens/about_us_view.dart';
import '../screens/contact_us_view.dart';
import '../screens/privacy_policy_view.dart';
import '../screens/return_policy_view.dart';

class SettingsViewBody extends StatelessWidget {
  const SettingsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 80),
          child: Column(
            children: [
              CommonTextWidget(
                text: S.of(context).settings,
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: AppColors.secondary,
              ),
              SizedBox(height: 20),

              // User Profile Section
              Container(
                decoration: BoxDecoration(
                  color: Color(0xFFF5F5F5),
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.1),
                      spreadRadius: 2,
                      blurRadius: 5,
                    ),
                  ],
                ),
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundColor: Colors.transparent,
                      child: Padding(
                        padding: EdgeInsets.all(8),
                        child: Image.asset(Assets.imagesPngAppIcon),
                      ),
                    ),
                    SizedBox(height: 15),
                    CommonTextWidget(
                      text: S.of(context).settings_description,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),

              // Settings Options List
              Column(
                children: [
                  SettingsItem(
                    title: S.of(context).account,
                    subtitle: S.of(context).account_desc,
                    icon: Icons.person,
                    onTap: () {
                      context.push(CustomAppWebView.rotrName,
                          extra: WebUri(changeLinkLanguage(
                              name: AppConstants.myAccount, context: context)));
                    },
                  ),
                  SettingsItem(
                    title: S.of(context).about_us,
                    subtitle: S.of(context).about_us_desc,
                    icon: Icons.business,
                    onTap: () {
                      context.push(AboutUsView.routeName);
                    },
                  ),
                  SettingsItem(
                    title: S.of(context).contact_us,
                    subtitle: S.of(context).contact_us_desc,
                    icon: Icons.phone,
                    onTap: () {
                      context.push(ContactUsView.routeName);
                    },
                  ),
                  SettingsItem(
                    title: S.of(context).privacy_policy,
                    subtitle: S.of(context).privacy_policy_desc,
                    icon: Icons.lock,
                    onTap: () {
                      context.push(PrivacyPolicyViews.routeName);
                    },
                  ),
                  SettingsItem(
                    title: S.of(context).return_policy,
                    subtitle: S.of(context).return_policy_desc,
                    icon: Icons.autorenew,
                    onTap: () {
                      context.push(ReturnPolicyView.routeName);
                    },
                  ),
                  BlocBuilder<LanguageCubit, LanguageState>(
                    builder: (context, state) {
                      return SettingsItem(
                        title: S.of(context).language_title,
                        subtitle: S.of(context).language_subtitle,
                        icon: Icons.language,
                        onTap: () => _showLanguageDialog(context),
                      );
                    },
                  ), SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    _buildCertificationCard(
                      context: context,
                      image: Assets.imagesPngTux1,
                    ),
                    _buildCertificationCard(
                      context: context,
                      image: Assets.imagesPngTux2,
                    ),
                    _buildCertificationCard(
                      context: context,
                      image: Assets.imagesPngTux3,
                    ),
                    _buildCertificationCard(
                    context: context,
                      image: Assets.imagesPngTux4,
                    ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCertificationCard({
 required BuildContext context,
    required String image,
  }) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: Image.asset(
        image,
        width: MediaQuery.of(context).size.width * 0.2,

        fit: BoxFit.cover,
      ),
    );
  }

  void _showLanguageDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: CommonTextWidget(
          text: S.of(context).choose_language,
          fontSize: 20,
          color:  AppColors.secondary,
          fontWeight: FontWeight.bold,
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            _buildLanguageOption(
              text: "العربية",
              isSelected: context.read<LanguageCubit>().isArabic!,
              onTap: () async {
                context.read<LanguageCubit>().toggleLanguage();
                Navigator.pop(context);
              },
            ),
            SizedBox(height: 10),
            _buildLanguageOption(
              text: "English",
              isSelected: !context.read<LanguageCubit>().isArabic!,
              onTap: () async {
                context.read<LanguageCubit>().toggleLanguage();
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildLanguageOption({
    required String text,
    required bool isSelected,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        decoration: BoxDecoration(
          color: isSelected
              ?  AppColors.secondary.withOpacity(0.1)
              : Colors.transparent,
          borderRadius: BorderRadius.circular(10),
          border: isSelected
              ? Border.all(color:  AppColors.secondary, width: 2)
              : Border.all(color: Colors.transparent),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CommonTextWidget(
              text: text,
              fontSize: 16,
              color: isSelected ?  AppColors.secondary : AppColors.graydark,
              fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
            ),
            if (isSelected)
              Icon(
                Icons.check_circle,
                color: AppColors.secondary,
                size: 24,
              ),
          ],
        ),
      ),
    );
  }
}
