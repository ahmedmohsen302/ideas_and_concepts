import 'package:flutter/material.dart';
import 'package:ideas_and_concepts/core/constants/app_colors.dart';
import 'package:ideas_and_concepts/core/constants/app_padding.dart';
import 'package:ideas_and_concepts/core/constants/app_styles.dart';

class CustomAction extends StatelessWidget {
  const CustomAction({super.key, required this.icon, required this.text});
  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPadding.v5,
      child: Row(
        children: [
          CircleAvatar(backgroundColor: AppColors.salmon, child: Icon(icon)),
          SizedBox(width: 10),
          Text(text, style: AppStyles.black20),
        ],
      ),
    );
  }
}
