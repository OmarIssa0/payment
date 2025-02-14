import 'package:flutter/material.dart';

class CustomCheckIcon extends StatelessWidget {
  const CustomCheckIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      radius: 50,
      backgroundColor: Color(0xFFD9D9D9),
      child: CircleAvatar(
        backgroundColor: Color(0xff34a853),
        radius: 40,
        child: Icon(
          Icons.check,
          color: Colors.white,
          size: 50,
        ),
      ),
    );
  }
}
