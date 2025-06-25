import 'package:flutter/material.dart';
import 'package:ideas_and_concepts/core/constants/app_colors.dart';
import 'package:ideas_and_concepts/core/constants/app_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    this.borderRadius,
    this.onPressed,
    required this.icon,
  });
  final String text;
  final BorderRadius? borderRadius;
  final void Function()? onPressed;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      width: 100,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          backgroundColor: AppColors.salmon,
          shape: RoundedRectangleBorder(
            borderRadius:
                borderRadius ??
                BorderRadiusGeometry.only(
                  topLeft: Radius.circular(12),
                  bottomLeft: Radius.circular(12),
                ),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 30),
            SizedBox(height: 3),
            Text(text, style: AppStyles.black16),
          ],
        ),
      ),
    );
  }
}
