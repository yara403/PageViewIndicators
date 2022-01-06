import 'package:flutter/material.dart';
import 'package:pageview_with_indicators/presentation/presentation_page.dart';
import 'package:pageview_with_indicators/theme/app_theme.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "PageView with Indicators",
      initialRoute: "/presentation",
      theme: ThemeData(scaffoldBackgroundColor: AppTheme.colors.background),
      routes: {
        "/presentation": (context) => const PresentationPage(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
