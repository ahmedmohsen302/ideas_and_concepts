import 'package:flutter/material.dart';
import 'package:ideas_and_concepts/core/constants/app_colors.dart';
import 'package:ideas_and_concepts/core/constants/app_padding.dart';
import 'package:ideas_and_concepts/core/constants/app_styles.dart';
import 'package:lucide_icons/lucide_icons.dart';

class GenderSelection extends StatelessWidget {
  const GenderSelection({
    super.key,
    required this.gender,
    required this.isSelected,
    required this.onTap,
  });

  final String gender;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          padding: AppPadding.v16,
          decoration: BoxDecoration(
            color: AppColors.beige,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                isSelected ? LucideIcons.circleDot : LucideIcons.circle,
                color: AppColors.salmon,
              ),
              const SizedBox(width: 8),
              Text(gender, style: AppStyles.blackBold16),
            ],
          ),
        ),
      ),
    );
  }
}
