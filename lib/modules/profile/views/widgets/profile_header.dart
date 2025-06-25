import 'package:flutter/material.dart';
import 'package:ideas_and_concepts/core/constants/app_colors.dart';
import 'package:ideas_and_concepts/core/constants/app_styles.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CircleAvatar(
          radius: 75,
          backgroundImage: NetworkImage(
            'https://developers.elementor.com/docs/assets/img/elementor-placeholder-image.png',
          ),
        ),
        const SizedBox(height: 15),
        Container(
          width: double.infinity,
          height: 55,
          decoration: BoxDecoration(color: AppColors.beige),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Ahmed Mohsen', style: AppStyles.black24),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('ID:', style: AppStyles.blackBold18),
                  Text(' 25030024', style: AppStyles.black18),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
