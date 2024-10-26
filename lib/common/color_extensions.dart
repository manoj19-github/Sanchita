import 'package:flutter/material.dart';
import 'dart:ui';


class TColor {
  static Color get primary => const Color(0xff5E00F5);
  static Color get primary500 => const Color(0xff7722FF );
  static Color get primary20 => const Color(0xff924EFF);
  static Color get primary10 => const Color(0xffAD7BFF);
  static Color get primary5 => const Color(0xffC9A7FF);
  static Color get primary0 => const Color(0xffE4D3FF);
  static Color get googleBtn => const Color(0xff4081EC);
  static Color get secondary => const Color(0xffFF7966);
  static Color get secondary50 => const Color(0xffFFA699);
  static Color get secondary0 => const Color(0xffFFD2CC);

  static Color get secondaryG => const Color(0xff00FAD9);
  static Color get secondaryG50 => const Color(0xff7DFFEE);

  static Color get gray => const Color(0xff0E0E12);
  static Color get gray80 => const Color(0xff1C1C23);
  static Color get gray70 => const Color(0xff353542);
  static Color get gray60 => const Color(0xff4E4E61);
  static Color get gray50 => const Color(0xff666680);
  static Color get gray40 => const Color(0xff83839C);
  static Color get gray30 => const Color(0xffA2A2B5);
  static Color get gray20 => const Color(0xffC1C1CD);
  static Color get gray10 => const Color(0xffE0E0E6);

  static Color get border => const Color(0xffCFCFFC);
  static Color get primaryText => Colors.white;
  static Color get secondaryText => gray60;
  static Color get white => Colors.white;

  static Color get primary2 => contentColorCyan;
  static Color get menuBackground => Color(0xFF090912);
  static Color get itemsBackground => Color(0xFF1B2339);
  static Color get pageBackground => Color(0xFF282E45);
  static Color get mainTextColor1 => Colors.white;
  static Color get mainTextColor2 => Colors.white70;
  static Color get mainTextColor3 => Colors.white38;
  static Color get mainGridLineColor => Colors.white10;
  static Color get borderColor => Colors.white54;
  static Color get gridLinesColor => Color(0x11FFFFFF);

  static Color get contentColorBlack => Colors.black;
  static Color get contentColorWhite => Colors.white;
  static Color get contentColorBlue => Color(0xFF2196F3);
  static Color get contentColorYellow => Color(0xFFFFC300);
  static Color get contentColorOrange => Color(0xFFFF683B);
  static Color get contentColorGreen => Color(0xFF3BFF49);
  static Color get contentColorPurple => Color(0xFF6E1BFF);
  static Color get contentColorPink => Color(0xFFFF3AF2);
  static Color get contentColorRed => Color(0xFFE80054);
  static Color get contentColorCyan => Color(0xFF50E4FF);
}



extension ColorExtension on Color {
  /// Convert the color to a darken color based on the [percent]
  Color darken([int percent = 40]) {
    assert(1 <= percent && percent <= 100);
    final value = 1 - percent / 100;
    return Color.fromARGB(
      alpha,
      (red * value).round(),
      (green * value).round(),
      (blue * value).round(),
    );
  }

  Color lighten([int percent = 40]) {
    assert(1 <= percent && percent <= 100);
    final value = percent / 100;
    return Color.fromARGB(
      alpha,
      (red + ((255 - red) * value)).round(),
      (green + ((255 - green) * value)).round(),
      (blue + ((255 - blue) * value)).round(),
    );
  }

  Color avg(Color other) {
    final red = (this.red + other.red) ~/ 2;
    final green = (this.green + other.green) ~/ 2;
    final blue = (this.blue + other.blue) ~/ 2;
    final alpha = (this.alpha + other.alpha) ~/ 2;
    return Color.fromARGB(alpha, red, green, blue);
  }
}
