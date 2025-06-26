import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:ideas_and_concepts/core/constants/app_colors.dart';
import 'package:ideas_and_concepts/core/widgets/custom_button.dart';
import 'package:ideas_and_concepts/routes/app_routes.dart';
import 'package:lucide_icons/lucide_icons.dart';

class ButtonsSection extends StatelessWidget {
  const ButtonsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomButton(text: 'Profile', icon: LucideIcons.user),
        const Divider(color: AppColors.white, indent: .5, thickness: 1),
        CustomButton(
          text: 'Wishlist',
          icon: LucideIcons.folderHeart,
          borderRadius: BorderRadius.circular(0),
        ),
        const Divider(color: AppColors.white, indent: .5, thickness: 1),
        CustomButton(
          onPressed: () {
            Get.toNamed(AppRoutes.orders);
          },
          text: 'My Orders',
          icon: LucideIcons.shoppingBag,
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(12),
            topRight: Radius.circular(12),
          ),
        ),
      ],
    );
  }
}
