import 'package:flutter/material.dart';
import 'package:pay/features/checkout/presentation/views/widgets/payment_method_item.dart';

class PaymentMethodsListView extends StatefulWidget {
  const PaymentMethodsListView({super.key});

  @override
  State<PaymentMethodsListView> createState() => _PaymentMethodsListViewState();
}

class _PaymentMethodsListViewState extends State<PaymentMethodsListView> {
  final List<String> images = const [
    "assets/images/card.svg",
    "assets/images/paypal.svg",
  ];

  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: GestureDetector(
              onTap: () {
                selectedIndex = index;
                setState(() {});
              },
              child: PaymentMethodItem(
                isActive: selectedIndex == index,
                image: images[index],
              ),
            ),
          );
        },
        itemCount: images.length,
      ),
    );
  }
}
