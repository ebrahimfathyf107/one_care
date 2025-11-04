import 'package:flutter/material.dart';
import 'package:one_care/features/settings/ui/widgets/custom_text_descrebtion.dart';

import '../../../../core/customs/custom_back_abb_bar.dart';

import '../../../../generated/l10n.dart';
import '../widgets/custom_ponts.dart';
import '../widgets/custom_text_tiltle.dart';

class ReturnPolicyView extends StatelessWidget {
  static const String routeName = "/ReturnPolicyPage";

  const ReturnPolicyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.only(bottom: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomBackAppBar(title: S.of(context).return_policy),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 15),
                  CustomTextTiltle(S.of(context).return_new_rights_title),
                  SizedBox(height: 15),
                  CustomPonts([
                    S.of(context).return_new_rights_point_1,
                    S.of(context).return_new_rights_point_2,
                    S.of(context).return_new_rights_point_3,
                    S.of(context).return_new_rights_point_4,
                    S.of(context).return_new_rights_point_5,
                    S.of(context).return_new_rights_point_6,
                    S.of(context).return_new_rights_point_7,
                    S.of(context).return_new_rights_point_8,
                  ]),
                  SizedBox(height: 25),
                  CustomTextTiltle(S.of(context).return_new_defective_title),
                  SizedBox(height: 15),
                  CustomTextDescrebtion(
                    S.of(context).return_new_defective_body,
                  ),
                  SizedBox(height: 25),
                  CustomTextTiltle(S.of(context).return_new_promotional_title),
                  SizedBox(height: 15),
                  CustomTextDescrebtion(
                    S.of(context).return_new_promotional_body,
                  ),
                  SizedBox(height: 25),
                  CustomTextTiltle(
                    S.of(context).return_new_non_defective_title,
                  ),
                  SizedBox(height: 15),
                  CustomTextDescrebtion(
                    S.of(context).return_new_non_defective_body,
                  ),
                  SizedBox(height: 25),
                  CustomTextTiltle(S.of(context).return_new_pricing_title),
                  SizedBox(height: 15),
                  CustomTextDescrebtion(S.of(context).return_new_pricing_body),
                  SizedBox(height: 25),
                  CustomTextTiltle(
                    S.of(context).return_new_exchange_request_title,
                  ),
                  SizedBox(height: 15),
                  CustomTextDescrebtion(
                    S.of(context).return_new_exchange_request_body,
                  ),
                  SizedBox(height: 25),
                  CustomTextTiltle(S.of(context).return_new_hygiene_title),
                  SizedBox(height: 15),
                  CustomTextDescrebtion(S.of(context).return_new_hygiene_body),
                  SizedBox(height: 25),
                  CustomTextTiltle(S.of(context).return_new_eligibility_title),
                  SizedBox(height: 15),
                  CustomTextDescrebtion(
                    S.of(context).return_new_eligibility_body,
                  ),
                  SizedBox(height: 25),
                  CustomTextTiltle(S.of(context).return_new_initiate_title),
                  SizedBox(height: 15),
                  CustomTextDescrebtion(S.of(context).return_new_initiate_body),
                  SizedBox(height: 25),
                  CustomTextTiltle(S.of(context).return_new_refund_title),
                  SizedBox(height: 15),
                  CustomTextDescrebtion(S.of(context).return_new_refund_body),
                  SizedBox(height: 25),
                  CustomTextTiltle(S.of(context).return_new_acceptance_title),
                  SizedBox(height: 15),
                  CustomPonts([
                    S.of(context).return_new_acceptance_point_1,
                    S.of(context).return_new_acceptance_point_2,
                    S.of(context).return_new_acceptance_point_3,
                  ]),
                  SizedBox(height: 25),
                  CustomTextTiltle(S.of(context).return_new_conditions_title),
                  SizedBox(height: 15),
                  CustomPonts([
                    S.of(context).return_new_conditions_point_1,
                    S.of(context).return_new_conditions_point_2,
                    S.of(context).return_new_conditions_point_3,
                    S.of(context).return_new_conditions_point_4,
                    S.of(context).return_new_conditions_point_5,
                    S.of(context).return_new_conditions_point_6,
                    S.of(context).return_new_conditions_point_7,
                    S.of(context).return_new_conditions_point_8,
                    S.of(context).return_new_conditions_point_9,
                    S.of(context).return_new_conditions_point_10,
                    S.of(context).return_new_conditions_point_11,
                    S.of(context).return_new_conditions_point_12,
                    S.of(context).return_new_conditions_point_13,
                  ]),
                  SizedBox(height: 30),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
