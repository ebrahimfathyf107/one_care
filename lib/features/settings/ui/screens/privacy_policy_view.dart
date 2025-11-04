import 'package:flutter/material.dart';

import 'package:one_care/features/settings/ui/widgets/custom_text_descrebtion.dart';
import 'package:one_care/features/settings/ui/widgets/custom_text_tiltle.dart';

import '../../../../core/customs/custom_back_abb_bar.dart';

import '../../../../generated/l10n.dart';

class PrivacyPolicyViews extends StatelessWidget {
  static const String routeName = "/PrivacyPolicyPage";

  const PrivacyPolicyViews({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomBackAppBar(title: S.of(context).privacy_policy),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: _NewPrivacyContent(),
            ),
          ],
        ),
      ),
    );
  }
}

class _NewPrivacyContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 8),
        CustomTextTiltle(s.privacy_new_heading),
        const SizedBox(height: 14),
        CustomTextDescrebtion(s.privacy_new_intro),
        const SizedBox(height: 24),

        _Section(s.privacy_new_guarantee_title, s.privacy_new_guarantee_body),
        _Section(
          s.privacy_new_service_providers_title,
          s.privacy_new_service_providers_body,
        ),
        _Section(
          s.privacy_new_data_you_provide_title,
          s.privacy_new_data_you_provide_list,
        ),
        _Section(
          s.privacy_new_info_collected_title,
          s.privacy_new_info_collected_body,
        ),
        _InlineNote(text: s.privacy_new_additional_anon_list),
        _InlineNote(text: s.privacy_new_account_closure_note),
        _Section(
          s.privacy_new_responsibility_title,
          s.privacy_new_responsibility_body,
        ),
        _Section(s.privacy_new_updates_title, s.privacy_new_updates_body),
        const SizedBox(height: 32),
      ],
    );
  }
}

class _Section extends StatelessWidget {
  final String title;
  final String body;
  const _Section(this.title, this.body);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 22.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomTextTiltle(title),
          const SizedBox(height: 8),
          CustomTextDescrebtion(body),
        ],
      ),
    );
  }
}

class _InlineNote extends StatelessWidget {
  final String text;
  const _InlineNote({required this.text});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: CustomTextDescrebtion(text),
    );
  }
}
