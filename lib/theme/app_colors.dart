import 'package:flutter/cupertino.dart';

abstract class AppColors {
  Color get background;
  Color get regularFont;
  Color get dot;
  Color get highlightedDot;
}

class AppColorsDefault implements AppColors {
  @override
  Color get background => const Color(0xFFFFFFFF);

  @override
  Color get regularFont => const Color(0xFF505059);

  @override
  Color get dot => const Color(0xFFC4C4C4);

  @override
  Color get highlightedDot => const Color(0xFF40E0D0);
}
