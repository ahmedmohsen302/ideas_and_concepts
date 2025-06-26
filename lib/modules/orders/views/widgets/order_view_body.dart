import 'package:flutter/material.dart';
import 'package:ideas_and_concepts/core/widgets/order_item.dart';

class OrderViewBody extends StatelessWidget {
  const OrderViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        OrderItem(
          title: 'sdfkjnfvsdk',
          description: 'fskjnvfk',
          imageUrl:
              'https://developers.elementor.com/docs/assets/img/elementor-placeholder-image.png',
          status: 'hskdaj',
          date: 'asdkvnk',
          price: 10,
          quantity: 10,
        ),
      ],
    );
  }
}
