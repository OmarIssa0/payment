import 'package:flutter/material.dart';

import '../utils/styles.dart';

AppBar buildAppBar({final String? title}) {
  return AppBar(
    // leading: const Icon(Icons.arrow_back_ios_new_outlined),
    centerTitle: true,
    backgroundColor: Colors.transparent,
    title: Text(
      title ?? '',
      textAlign: TextAlign.center,
      style: Styles.style25,
    ),
  );
}
