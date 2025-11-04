import 'package:flutter/material.dart';
import 'package:one_care/features/settings/ui/widgets/custom_text_descrebtion.dart';

import '../../../../core/customs/custom_back_abb_bar.dart';
import '../../../../core/helpers/app_assets.dart';
import '../../../../generated/l10n.dart';

class AboutUsView extends StatelessWidget {
  static const String routeName = "/AboutUsPage";

  const AboutUsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomBackAppBar(title: S.of(context).about_us),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(Assets.imagesPngAppIcon),
                  const SizedBox(height: 20),
                  _SectionTitle(text: S.of(context).about_new_why_best_title),
                  const SizedBox(height: 8),
                  CustomTextDescrebtion(S.of(context).about_new_why_best_body),
                  const SizedBox(height: 24),

                  _SectionTitle(text: S.of(context).about_new_message_title),
                  const SizedBox(height: 8),
                  CustomTextDescrebtion(S.of(context).about_new_message_body),
                  const SizedBox(height: 24),

                  _SectionTitle(text: S.of(context).about_new_vision_title),
                  const SizedBox(height: 8),
                  CustomTextDescrebtion(S.of(context).about_new_vision_body),
                  const SizedBox(height: 24),

                  _SectionTitle(text: S.of(context).about_new_values_title),
                  const SizedBox(height: 12),
                  _ValueItem(
                    index: 1,
                    title: S.of(context).about_new_value1_title,
                    body: S.of(context).about_new_value1_body,
                  ),
                  _ValueItem(
                    index: 2,
                    title: S.of(context).about_new_value2_title,
                    body: S.of(context).about_new_value2_body,
                  ),
                  _ValueItem(
                    index: 3,
                    title: S.of(context).about_new_value3_title,
                    body: S.of(context).about_new_value3_body,
                  ),
                  _ValueItem(
                    index: 4,
                    title: S.of(context).about_new_value4_title,
                    body: S.of(context).about_new_value4_body,
                  ),
                  _ValueItem(
                    index: 5,
                    title: S.of(context).about_new_value5_title,
                    body: S.of(context).about_new_value5_body,
                  ),
                  const SizedBox(height: 32),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _SectionTitle extends StatelessWidget {
  final String text;
  const _SectionTitle({required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(
        context,
      ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w700),
    );
  }
}

class _ValueItem extends StatelessWidget {
  final int index;
  final String title;
  final String body;
  const _ValueItem({
    required this.index,
    required this.title,
    required this.body,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 14,
            backgroundColor: Theme.of(
              context,
            ).colorScheme.primary.withOpacity(0.1),
            child: Text(
              index.toString(),
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: Theme.of(context).colorScheme.primary,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: Theme.of(
                    context,
                  ).textTheme.titleSmall?.copyWith(fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 4),
                CustomTextDescrebtion(body),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
