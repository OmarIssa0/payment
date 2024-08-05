import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';

class CustomCreditCard extends StatefulWidget {
  const CustomCreditCard(
      {super.key, required this.formKey, required this.autovalidateMode});
  final GlobalKey<FormState> formKey;

  final AutovalidateMode autovalidateMode;
  @override
  State<CustomCreditCard> createState() => _CustomCreditCardState();
}

class _CustomCreditCardState extends State<CustomCreditCard> {
  // final formKey = GlobalKey<FormState>();
  // final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  String cardNumber = '', expiryDate = '', cardHolderName = '', cvvCode = '';
  bool showBackView = false;

  // void Function(CreditCardBrand) onCreditCardWidgetChange;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CreditCardWidget(
          isHolderNameVisible: true,
          cardNumber: cardNumber,
          expiryDate: expiryDate,
          cardHolderName: cardHolderName,
          cvvCode: cvvCode,
          showBackView: showBackView,
          onCreditCardWidgetChange: (p0) {},
        ),
        CreditCardForm(
          autovalidateMode: widget.autovalidateMode,
          cardNumber: cardNumber,
          expiryDate: expiryDate,
          cardHolderName: cardHolderName,
          cvvCode: cvvCode,
          onCreditCardModelChange: (carditCardModel) {
            cardNumber = carditCardModel.cardNumber;
            expiryDate = carditCardModel.expiryDate;
            cardHolderName = carditCardModel.cardHolderName;
            cvvCode = carditCardModel.cvvCode;
            showBackView = carditCardModel.isCvvFocused;
            setState(() {});
          },
          formKey: widget.formKey,
        ),
      ],
    );
  }
}
