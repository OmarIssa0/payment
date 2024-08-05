import 'package:flutter/cupertino.dart';

import '../../../../../core/utils/styles.dart';

class PaymentItemInfo extends StatelessWidget {
  const PaymentItemInfo(
      {super.key, required this.text, required this.textBold});

  final String text, textBold;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          textAlign: TextAlign.center,
          style: Styles.style18,
        ),
        Text(
          textBold,
          textAlign: TextAlign.center,
          style: Styles.styleBold18,
        ),
      ],
    );
  }
}
