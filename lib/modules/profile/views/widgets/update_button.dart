import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:ideas_and_concepts/core/constants/app_colors.dart';
import 'package:ideas_and_concepts/core/constants/app_styles.dart';

class UpdateButton extends StatelessWidget {
  const UpdateButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      child: ElevatedButton(
        onPressed: () {
          Get.back();
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.salmon,
          foregroundColor: AppColors.white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
        ),
        child: Text('Update Profile', style: AppStyles.white24),
      ),
    );
  }
}
