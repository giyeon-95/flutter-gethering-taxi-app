import 'package:flutter/material.dart';

final kHintTextStyle = TextStyle(
  color: Colors.grey,
  fontFamily: 'OpenSans',
);

final kLabelStyle = TextStyle(
  color: Color(0xFFE66A73),
  fontWeight: FontWeight.bold,
  fontFamily: 'OpenSans',
);

final kBasicFontStyle = TextStyle(
  color: Colors.black,
  fontWeight: FontWeight.w500,
  fontFamily: 'OpenSans',
  fontSize: 10,
);

final kBoxDecorationStyle = BoxDecoration(
  color: Colors.white,
  borderRadius: BorderRadius.circular(10.0),
  boxShadow: [
    BoxShadow(
      color: Colors.black12,
      blurRadius: 6.0,
      offset: Offset(0, 2),
    ),
  ],
);
