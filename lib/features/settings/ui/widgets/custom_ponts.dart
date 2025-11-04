import 'package:flutter/material.dart';

import '../../../../core/customs/common_text_widget.dart';
import '../../../../core/theme/app_colors.dart';

class CustomPonts extends StatelessWidget {
  final List<String> points;

  const CustomPonts(this.points, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.lightGray,
        borderRadius: BorderRadius.circular(10),
      ),
      padding: EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: points.map((point) => Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 3),
              child: Icon(Icons.arrow_right, size: 18, color: AppColors.primary),
            ),
            SizedBox(width: 5),
            Expanded(
              child: CommonTextWidget(
                textAlign: TextAlign.start,
                text: point,
                fontWeight: FontWeight.w500,
                fontSize: 16,
                color: AppColors.graydark,
              ),
            ),
          ],
        )).toList(),
      ),
    );
  }
}
