import 'package:flutter/material.dart';
import 'package:ideas_and_concepts/core/constants/app_colors.dart';
import 'package:ideas_and_concepts/core/constants/app_styles.dart';

class BuildTextField extends StatelessWidget {
  const BuildTextField({
    super.key,
    required this.hintText,
    required this.keyboardType,
    required this.title,
  });
  final String hintText;
  final TextInputType keyboardType;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: AppStyles.black20),
        TextField(
          keyboardType: keyboardType,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: AppColors.brownRosie),
              gapPadding: 10,
            ),
            hintText: hintText,
          ),
        ),
      ],
    );
  }
}
