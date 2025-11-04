
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:one_care/core/customs/common_text_widget.dart';



import '../theme/app_colors.dart';

class CustomBackAppBar extends StatelessWidget {
  const CustomBackAppBar({
    super.key,
    required this.title,
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 30, bottom: 20, left: 20, right: 20),
      color: AppColors.secondary,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () => context.pop(),
            child: Icon(Icons.arrow_back_ios, color: AppColors.white),
          ),
          CommonTextWidget(
            text: title,
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: AppColors.white,
          ),
          SizedBox(width: 5),
        ],
      ),
    );
  }
}
