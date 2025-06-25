import 'package:flutter/material.dart';
import 'package:ideas_and_concepts/core/widgets/custom_action.dart';
import 'package:lucide_icons/lucide_icons.dart';

class ActionsSection extends StatelessWidget {
  const ActionsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomAction(icon: LucideIcons.keyRound, text: 'Privacy Policy'),
        CustomAction(icon: LucideIcons.creditCard, text: 'Paymen methods'),
        CustomAction(icon: Icons.notifications_none, text: "Notifications"),
        CustomAction(icon: LucideIcons.settings, text: 'Settings'),
        CustomAction(icon: LucideIcons.helpCircle, text: 'Help Center'),
        CustomAction(icon: LucideIcons.logOut, text: 'Logout'),
      ],
    );
  }
}
