// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// import '../../../../../core/widgets/custom_bottom.dart';

// class CustomButtonBlocConsumer extends StatelessWidget {
//   const CustomButtonBlocConsumer({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return BlocConsumer<PaymentCubit, PaymentState>(
//       listener: (context, state) {
//         if (state is PaymentSuccess) {
//           Navigator.of(context)
//               .pushReplacement(MaterialPageRoute(builder: (context) {
//             return const ThankYouView();
//           }));
//         }
//         if (state is PaymentFailure) {
//           Navigator.of(context).pop();
//           SnackBar snackBar = SnackBar(
//             content: Text(state.errMessage),
//           );
//           ScaffoldMessenger.of(context).showSnackBar(snackBar);
//         }
//       },
//       builder: (context, state) {
//         return CustomBottom(
//           onTap: () {
//             PaymentIntentInputModel paymentIntentInputModel =
//                 PaymentIntentInputModel(amount: "100", currency: "USD");
//             BlocProvider.of<PaymentCubit>(context)
//                 .makePayment(paymentIntentInputModel: paymentIntentInputModel);
//           },
//           isLoading: state is PaymentLoading ? true : false,
//           textBottom: "Continue",
//         );
//       },
//     );
//   }
// }
