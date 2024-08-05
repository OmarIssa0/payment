import 'package:flutter/material.dart';
import 'package:pay/features/checkout/presentation/views/widgets/custom_check_icon.dart';
import 'package:pay/features/checkout/presentation/views/widgets/thank_you_cart.dart';

import 'custom_dashed_line.dart';

class ThankYouViewBody extends StatelessWidget {
  const ThankYouViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 22, right: 22, bottom: 80),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          const ThankYouCart(),
          Positioned(
            bottom: MediaQuery.sizeOf(context).height * .2 + 20,
            left: 20 + 8,
            right: 20 + 8,
            child: const CustomDashedLine(),
          ),
          Positioned(
            bottom: MediaQuery.sizeOf(context).height * .2,
            left: -20,
            child: const CircleAvatar(
              backgroundColor: Colors.white,
            ),
          ),
          Positioned(
            bottom: MediaQuery.sizeOf(context).height * .2,
            right: -20,
            child: const CircleAvatar(
              backgroundColor: Colors.white,
            ),
          ),
          const Positioned(
            left: 0,
            right: 0,
            top: -50,
            child: CustomCheckIcon(),
          )
        ],
      ),
    );
  }
}
