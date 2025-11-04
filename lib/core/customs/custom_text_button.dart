
import 'package:flutter/material.dart';
import 'package:one_care/core/customs/common_text_widget.dart';



class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final Color color;
  final Color textColor;
  const CustomButton(
      {super.key,
      required this.text,
      required this.onTap,
      required this.color,
      required this.textColor});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onTap,
      style: TextButton.styleFrom(
        backgroundColor: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 24),
      ),
      child: CommonTextWidget(
        text: text,
        fontSize: 20,
        color: textColor,
      ),
    );
  }
}
