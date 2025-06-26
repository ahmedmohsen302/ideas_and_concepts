import 'package:flutter/material.dart';
import 'package:ideas_and_concepts/core/constants/app_colors.dart';
import 'package:ideas_and_concepts/core/constants/app_padding.dart';
import 'package:ideas_and_concepts/core/constants/app_styles.dart';
import 'package:lucide_icons/lucide_icons.dart';

class OrderItem extends StatelessWidget {
  final String title;
  final String description;
  final String imageUrl;
  final String status;
  final String date;
  final double price;
  final int quantity;
  final bool isCanceled;

  const OrderItem({
    super.key,
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.status,
    required this.date,
    required this.price,
    required this.quantity,
    this.isCanceled = false,
  });

  @override
  Widget build(BuildContext context) {
    final total = (price * quantity).toStringAsFixed(2);

    return Padding(
      padding: AppPadding.h16,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Order: $status", style: AppStyles.blackItalic18),
              Text(date, style: AppStyles.blackItalic18),
            ],
          ),
          Divider(),
          const SizedBox(height: 5),
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(
                  imageUrl,
                  height: 60,
                  width: 60,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(title, style: AppStyles.terracotta24),
                            const SizedBox(height: 4),
                            Text(
                              description,
                              style: AppStyles.black16,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                            const SizedBox(height: 8),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                              padding: AppPadding.all2,
                              decoration: BoxDecoration(
                                border: Border.all(color: AppColors.salmon),
                                shape: BoxShape.circle,
                              ),
                              child: Icon(
                                LucideIcons.trash2,
                                color: AppColors.salmon,
                                size: 18,
                              ),
                            ),
                            const SizedBox(width: 4),
                            CircleAvatar(
                              radius: 12,
                              backgroundColor: AppColors.salmon,
                              child: Icon(
                                LucideIcons.plus,
                                color: AppColors.white,
                                size: 22,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text("\$$price", style: AppStyles.black18),
                        Text("${quantity}x uds.", style: AppStyles.black18),
                        Text("Total: \$$total", style: AppStyles.black18),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 8),
            ],
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
