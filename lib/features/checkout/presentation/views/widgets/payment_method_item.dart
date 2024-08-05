import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PaymentMethodItem extends StatelessWidget {
  const PaymentMethodItem({
    super.key,
    required this.isActive,
    required this.image,
  });

  final bool isActive;
  final String image;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 600),
      width: 103,
      height: 62,
      decoration: ShapeDecoration(
        shadows: [
          BoxShadow(
            color: isActive ? const Color(0xFf34a853) : Colors.black38,
            blurRadius: isActive ? 4 : 0,
            offset: const Offset(0, 0),
            spreadRadius: 0,
          ),
        ],
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 1.5,
            color: isActive ? const Color(0xFf34a853) : Colors.black38,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
        color: const Color(0xFf34a853),
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
        ),
        child: Center(
          child: SvgPicture.asset(
            image,
            fit: BoxFit.scaleDown,
            // height: 25,
          ),
        ),
      ),
    );
  }
}
