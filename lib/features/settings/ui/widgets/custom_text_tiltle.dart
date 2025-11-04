import 'package:flutter/material.dart';

import '../../../../core/customs/common_text_widget.dart';
import '../../../../core/theme/app_colors.dart';

class CustomTextTiltle extends StatelessWidget {
  final String title;

  const CustomTextTiltle(  this.title, {super.key});

  @override
  Widget build(BuildContext context) {
    return CommonTextWidget(
      textAlign: TextAlign.start,
      text: title,
      fontSize: 20,
      fontWeight: FontWeight.w600,
      color: AppColors.secondary
    );
  }
}
