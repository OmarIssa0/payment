import 'package:flutter/material.dart';
import 'package:pay/core/utils/styles.dart';
import 'package:pay/features/checkout/presentation/views/widgets/my_cart_view_body.dart';

class MyCartView extends StatelessWidget {
  const MyCartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: const Text(
          'My Cart',
          style: Styles.style25,
        ),
      ),
      body: const MyCartViewBody(),
    );
  }
}
