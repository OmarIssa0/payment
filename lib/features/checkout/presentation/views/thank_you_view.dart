import 'package:flutter/material.dart';
import 'package:pay/features/checkout/presentation/views/widgets/thank_you_body_view.dart';

class ThankYouView extends StatelessWidget {
  const ThankYouView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
      ),
      body: const ThankYouViewBody(),
    );
  }
}
