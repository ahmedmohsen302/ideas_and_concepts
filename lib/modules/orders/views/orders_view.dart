import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:ideas_and_concepts/core/constants/app_styles.dart';
import 'package:ideas_and_concepts/modules/orders/views/widgets/order_view_body.dart';
import 'package:lucide_icons/lucide_icons.dart';

class OrdersView extends StatelessWidget {
  const OrdersView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(LucideIcons.arrowLeft),
        ),
        title: Text('My Orders', style: AppStyles.salmon24),
        centerTitle: true,
      ),
      body: OrderViewBody(),
    );
  }
}
