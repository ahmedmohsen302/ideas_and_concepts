import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:ideas_and_concepts/core/constants/app_colors.dart';
import 'package:ideas_and_concepts/core/constants/app_styles.dart';
import 'package:ideas_and_concepts/modules/profile/views/widgets/profile_view_body.dart';
import 'package:ideas_and_concepts/routes/app_routes.dart';
import 'package:lucide_icons/lucide_icons.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(LucideIcons.arrowLeft),
        title: Text('My Profile', style: AppStyles.salmon24),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Get.toNamed(AppRoutes.editProfile);
            },
            icon: Icon(LucideIcons.edit3, color: AppColors.salmon),
          ),
        ],
      ),
      body: Center(child: ProfileViewBody()),
    );
  }
}
