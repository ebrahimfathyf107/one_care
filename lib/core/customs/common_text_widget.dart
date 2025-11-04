import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../helpers/app_constants.dart';

class CommonTextWidget extends StatelessWidget {
  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  final Color color;
  final TextDirection? textDirection;
  final TextAlign textAlign;

  const CommonTextWidget({
    super.key,
    required this.text,
    this.fontSize = 18,
    this.fontWeight = FontWeight.bold,
    this.color = Colors.black,
    this.textAlign = TextAlign.center,
    this.textDirection,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textDirection: textDirection,
      style: TextStyle(
          fontFamily: AppConstants.tajawalFont,
          fontSize: fontSize.sp,
          fontWeight: fontWeight,
          color: color),
      textAlign: textAlign,
    );
  }
}
