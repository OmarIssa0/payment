import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pay/core/utils/styles.dart';
import 'package:pay/features/checkout/presentation/views/widgets/payment_Item_info.dart';
import 'package:pay/features/checkout/presentation/views/widgets/total_price_item.dart';

import 'cart_info_widgets.dart';

class ThankYouCart extends StatelessWidget {
  const ThankYouCart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: double.infinity,
      decoration: ShapeDecoration(
        color: const Color(0xFFEDEDED),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 50 + 16, left: 22, right: 22),
        child: Column(
          children: [
            const Text(
              'Thank you!',
              textAlign: TextAlign.center,
              style: Styles.style25,
            ),
            Text(
              'Your transaction was successful',
              textAlign: TextAlign.center,
              style: Styles.style20,
            ),
            const SizedBox(
              height: 42,
            ),
            const PaymentItemInfo(
              text: "Date",
              textBold: "01/24/2023",
            ),
            const SizedBox(
              height: 20,
            ),
            const PaymentItemInfo(
              text: "Time",
              textBold: "10:15 AM",
            ),
            const SizedBox(
              height: 20,
            ),
            const PaymentItemInfo(
              text: "To",
              textBold: "Sam Louis",
            ),
            const Divider(
              height: 60,
              thickness: 2,
            ),
            const TotalPrice(
              title: "Total",
              value: r"$50.97",
            ),
            const SizedBox(
              height: 30,
            ),
            const CartInfoWidgets(),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(
                  FontAwesomeIcons.barcode,
                  size: 64,
                ),
                Container(
                  width: 113,
                  height: 58,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(
                          width: 1.50, color: Color(0xFF34A853)),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'PAID',
                      textAlign: TextAlign.center,
                      style: Styles.style24
                          .copyWith(color: const Color(0xFF34A853)),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: MediaQuery.sizeOf(context).height * .1 - 29)
          ],
        ),
      ),
    );
  }
}
