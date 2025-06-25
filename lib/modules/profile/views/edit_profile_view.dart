import 'package:flutter/material.dart';
import 'package:ideas_and_concepts/core/constants/app_styles.dart';
import 'package:ideas_and_concepts/modules/profile/views/widgets/edit_profile_view_body.dart';
import 'package:lucide_icons/lucide_icons.dart';

class EditProfileView extends StatelessWidget {
  const EditProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(LucideIcons.arrowLeft),
        title: Text('My Profile', style: AppStyles.salmon24),
        centerTitle: true,
      ),
      body: EditProfileViewBody(),
    );
  }
}
