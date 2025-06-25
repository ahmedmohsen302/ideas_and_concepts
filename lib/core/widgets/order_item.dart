import 'package:flutter/material.dart';
import 'package:ideas_and_concepts/core/constants/app_colors.dart';

class OrderItem extends StatelessWidget {
  const OrderItem({
    super.key,
    required this.title,
    required this.subTitle,
    required this.image,
  });
  final String title;
  final String subTitle;
  final String image;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      subtitle: Text(subTitle),
      leading: Image.network(image),
      trailing: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: AppColors.salmon, width: 2),
              shape: BoxShape.circle,
              color: Colors.transparent,
            ),
            child: Icon(
              Icons.delete_outline_rounded,
              color: AppColors.salmon,
              size: 10,
            ),
          ),
          CircleAvatar(
            backgroundColor: AppColors.salmon,
            foregroundColor: AppColors.white,
            child: Icon(Icons.add, size: 10),
          ),
        ],
      ),
    );
  }
}
