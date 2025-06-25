import 'package:flutter/material.dart';
import 'package:ideas_and_concepts/core/constants/app_styles.dart';

class UserSection extends StatelessWidget {
  const UserSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 75,
          backgroundImage: NetworkImage(
            'https://developers.elementor.com/docs/assets/img/elementor-placeholder-image.png',
          ),
        ),
        const SizedBox(height: 10),
        Text('Ahmed Mohsen', style: AppStyles.black24),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('ID:', style: AppStyles.blackBold18),
            Text(' 25030024', style: AppStyles.black18),
          ],
        ),
      ],
    );
  }
}
