import 'package:flutter/material.dart';
import 'package:pay/core/widgets/custom_bottom.dart';
import 'package:pay/features/checkout/presentation/views/payment_details_view.dart';
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
          Expanded(
              child: Image.asset(
            "assets/images/basket_image.png",
            fit: BoxFit.cover,
          )),
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
            value: "\$5.00",
          ),
          const Divider(
            height: 40,
          ),
          const OrderInfoItem(
            title: "Total",
            value: "\$50.00",
          ),
          const SizedBox(height: 25),
          CustomBottom(
            textBottom: "Complete Payment",
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const PaymentDetailsView(),
              ),
            ),
          ),
          const SizedBox(height: 25),
        ],
      ),
    );
  }
}
