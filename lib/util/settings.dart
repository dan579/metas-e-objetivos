import 'package:flutter/material.dart';

class Settings {

  static String appBarColorLink = "#FF004D0";

  Color appBarColor = HexColor.fromHex(appBarColorLink);




  BoxDecoration defaultWhiteColor() {
    return BoxDecoration(
        color: Colors.white.withOpacity(0.80),
        borderRadius: const BorderRadius.all(Radius.circular(10))
    );
  }

  // BoxDecoration defaultBlueColor() {
  //   return BoxDecoration(
  //       color: blueColorLink,
  //       borderRadius: const BorderRadius.all(Radius.circular(40))
  //   );
  // }
  //
  // BoxDecoration defaultGrayColor() {
  //   return BoxDecoration(
  //       color: grayBackgroundColor,
  //       borderRadius: const BorderRadius.all(Radius.circular(40))
  //   );
  // }

  TextStyle styleTextInput() {
    return TextStyle(
      color: Colors.black.withOpacity(0.5),
      fontFamily: 'Roboto-Regular',
      fontSize: 18,
    );
  }
}

TextStyle styleTextWhiteInput() {
  return const TextStyle(
    color: Colors.white,
    fontFamily: 'Roboto-Regular',
  );
}

extension HexColor on Color {
  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
