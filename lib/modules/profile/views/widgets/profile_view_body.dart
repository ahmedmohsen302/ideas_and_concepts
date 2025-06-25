import 'package:flutter/material.dart';
import 'package:ideas_and_concepts/core/constants/app_padding.dart';
import 'package:ideas_and_concepts/modules/profile/views/widgets/actions_section.dart';
import 'package:ideas_and_concepts/modules/profile/views/widgets/buttons_section.dart';
import 'package:ideas_and_concepts/modules/profile/views/widgets/user_section.dart';

class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(height: 10),
        UserSection(),
        const SizedBox(height: 10),
        ButtonsSection(),
        const SizedBox(height: 20),
        Padding(padding: AppPadding.h60, child: ActionsSection()),
      ],
    );
  }
}
