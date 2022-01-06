import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_theme.dart';

abstract class AppTextStyles {
  TextStyle get content;
}

class AppTextStylesDefault implements AppTextStyles {
  @override
  TextStyle get content =>
      GoogleFonts.montserrat(fontSize: 14, color: AppTheme.colors.regularFont);
}
