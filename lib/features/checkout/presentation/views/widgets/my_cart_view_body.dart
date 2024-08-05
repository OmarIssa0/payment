import 'package:flutter/material.dart';
import 'package:pay/features/checkout/presentation/views/widgets/cart_info_item.dart';

class MyCartViewBody extends StatelessWidget {
  const MyCartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          const SizedBox(height: 18),
          Image.asset("assets/images/basket_image.png"),
          const SizedBox(height: 25),
          const OrderInfoItem(
            title: "Order Suntotal",
            value: "\$42.00",
          ),
          const OrderInfoItem(
            title: "Discount",
            value: "\$0.00",
          ),
          const OrderInfoItem(
            title: "Shipping",
            value: "\$42.00",
          ),
        ],
      ),
    );
  }
}
