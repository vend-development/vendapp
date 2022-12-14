import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color orange600 = fromHex('#ff890b');

  static Color mainVendOrange = fromHex('#ED6C02');

  static Color orangeA2003f = fromHex('#3ff18f41');

  static Color bluegray901 = fromHex('#352f2f');

  static Color deepOrangeA400 = fromHex('#ff4c00');

  static Color bluegray900C4 = fromHex('#c4352f2f');

  static Color black9003f = fromHex('#3f000000');

  static Color gray50 = fromHex('#fff7f7');

  static Color gray700C4 = fromHex('#c45b5959');

  static Color whiteA70099 = fromHex('#99ffffff');

  static Color whiteA70033 = fromHex('#33ffffff');

  static Color black90000 = fromHex('#00000000');

  static Color black900 = fromHex('#000000');

  static Color gray70099 = fromHex('#995b5a5a');

  static Color gray60000 = fromHex('#00716b6b');

  static Color gray501 = fromHex('#918b86');

  static Color gray700 = fromHex('#5b5a5a');

  static Color orangeA200 = fromHex('#f18f41');

  static Color gray500 = fromHex('#9e9c9c');

  static Color gray800 = fromHex('#5d4848');

  static Color gray900 = fromHex('#511d1d');

  static Color gray702 = fromHex('#615b5b');

  static Color orange800 = fromHex('#ed6c02');

  static Color bluegray100 = fromHex('#d9d9d9');

  static Color gray80099 = fromHex('#99564b4b');

  static Color gray300 = fromHex('#d9ded6');

  static Color gray100 = fromHex('#f5f5f5');

  static Color bluegray900 = fromHex('#352e2e');

  static Color bluegray400 = fromHex('#888888');

  static Color whiteA701 = fromHex('#fafffe');

  static Color whiteA700 = fromHex('#ffffff');

  static Color whiteA702 = fromHex('#fffcfc');


  static Color gray900D8 = fromHex('#d8181a20');

  static Color cyan600 = fromHex('#19acb6');

  static Color black9000c = fromHex('#0c04060f');

  static Color orange700 = fromHex('#e77d00');

  static Color gray200 = fromHex('#ebebeb');

  static Color gray201 = fromHex('#eaeaea');

  static Color black9007f = fromHex('#7f000000');

  static Color whiteA7007f = fromHex('#7ffefefe');

  static Color whiteA7003f = fromHex('#3fffffff');

  static Color black9009e = fromHex('#9e080808');

  static Color red300 = fromHex('#ff6e6e');

  static Color whiteA70072 = fromHex('#72ffffff');

  static Color whiteA70070 = fromHex('#70ffffff');

  static Color deepPurple200 = fromHex('#aea2dd');

  static Color black90087 = fromHex('#87000000');

  static Color greenA700 = fromHex('#00b649');

  static Color black901 = fromHex('#080808');

  static Color deepPurpleA100 = fromHex('#b29dff');

  static Color deepPurpleA200 = fromHex('#8165ea');

  static Color gray600 = fromHex('#808080');

  static Color gray601 = fromHex('#757575');

  static Color gray502 = fromHex('#a6a1a1');

  static Color gray400 = fromHex('#afafaf');


  static Color gray401 = fromHex('#c3c3c3');

  static Color gray503 = fromHex('#939393');

  static Color gray602 = fromHex('#7b7b7b');

  static Color indigo50 = fromHex('#e0d8ff');

  static Color deepPurpleA200F2 = fromHex('#f28164ea');

  static Color deepPurpleA200F3 = fromHex('#f28165ea');

  static Color gray101 = fromHex('#f5f2ff');

  static Color deepPurple50 = fromHex('#ede9ff');

  static Color whiteA70000 = fromHex('#00ffffff');

  static Color bluegray401 = fromHex('#888888');


  static Color black90019 = fromHex('#19000000');

  static Color gray40000 = fromHex('#00c4c4c4');

  static Color black900Ad = fromHex('#ad000000');

  static Color deepPurpleA20033 = fromHex('#338165ea');


  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }




}
