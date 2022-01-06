import 'package:flutter/material.dart';
import 'package:pageview_with_indicators/theme/app_theme.dart';

class SlideWidget extends StatelessWidget {
  final String imagePath;
  final String contentText;

  const SlideWidget(
      {Key? key, required this.imagePath, required this.contentText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
            image: AssetImage(imagePath),
            width: 266,
          ),
          const SizedBox(height: 20),
          SizedBox(
            width: 266,
            child: Text(
              contentText,
              textAlign: TextAlign.center,
              style: AppTheme.textStyles.content,
            ),
          )
        ],
      ),
    );
  }
}
