import 'package:flutter/material.dart';
import 'package:foodcon_provider/Providers/DarkmoodProv.dart';
import 'package:foodcon_provider/constants.dart';
import 'package:sizer/sizer.dart';

TextStyle black12Bold = TextStyle(
  fontSize: 12.sp,
  fontWeight: FontWeight.bold,
  fontFamily: 'arabicmodern',
);
TextStyle black14Bold = TextStyle(
  fontSize: 14.sp,
  fontWeight: FontWeight.bold,
  fontFamily: 'arabicmodern',
);
TextStyle white14Bold = TextStyle(
  fontSize: 14.sp,
  fontWeight: FontWeight.bold,
  color: Colors.white,
);
TextStyle white10Bold = TextStyle(
  fontSize: 10.sp,
  fontWeight: FontWeight.bold,
  color: Colors.white,
);
TextStyle white8Bold = TextStyle(
  fontSize: 8.sp,
  fontWeight: FontWeight.bold,
  color: Colors.white,
);

TextStyle black14Normal = TextStyle(
  fontSize: 14.sp,
);
TextStyle normal = TextStyle(
  fontFamily: 'arabicmodern',
  fontSize: 9.sp,
);
TextStyle kprimarytext = TextStyle(fontSize: 14.sp, color: KprimaryColor);
TextStyle kprimaryBoldtext = TextStyle(fontSize: 14.sp, color: KprimaryColor);
TextStyle blackBold =
    TextStyle(fontFamily: 'arabicmodern', fontWeight: FontWeight.bold);

TextStyle deliveryTextStyle(DarkmoodProv darkmood) {
  return TextStyle(
    fontSize: 12.sp,
    color: mainthemeColor(darkmood),
    fontWeight: FontWeight.bold,
    decoration: TextDecoration.underline,
  );
}

TextStyle purple14Bold = TextStyle(
  color: Color(0xFF4662FD),
  fontWeight: FontWeight.bold,
  fontFamily: 'arabicmodern',
  fontSize: 16.sp,
);
