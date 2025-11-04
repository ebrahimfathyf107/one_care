import 'package:flutter/material.dart';

import '../../../../core/customs/common_text_widget.dart';
import '../../../../core/theme/app_colors.dart';

class CustomTextDescrebtion extends StatelessWidget {
  const CustomTextDescrebtion( this.text, {super.key});
 final String text;
 
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.lightGray,
        borderRadius: BorderRadius.circular(10),
      ),
      padding: EdgeInsets.all(15),
      child: CommonTextWidget(
        textAlign: TextAlign.start,
        text: text,
        fontWeight: FontWeight.w500,
        fontSize: 16,
        color: AppColors.graydark,
      ),
    );
  }
}
