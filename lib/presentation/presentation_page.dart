import 'package:flutter/material.dart';
import 'package:pageview_with_indicators/presentation/presentation_controller.dart';

import 'model/presentation.dart';
import 'widget/dot.dart';

class PresentationPage extends StatefulWidget {
  const PresentationPage({Key? key}) : super(key: key);

  @override
  State<PresentationPage> createState() => _PresentationPageState();
}

class _PresentationPageState extends State<PresentationPage> {
  final _pgController = PageController(initialPage: 0);
  final _pages = Presentation.slides;
  final controller = PresentationController();

  List<DotWidget> buildIndicators() {
    return List.generate(
      _pages.length,
      (index) => DotWidget(
        onTap: () {
          controller.setSelectedIndex(index);
          _pgController.animateToPage(
            index,
            duration: const Duration(seconds: 1),
            curve: Curves.fastOutSlowIn,
          );
        },
        index: index,
        controller: controller,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Expanded(
              flex: 9,
              child: PageView(
                controller: _pgController,
                onPageChanged: (index) {
                  controller.setSelectedIndex(index);
                },
                children: _pages,
              ),
            ),
            Expanded(
              flex: 1,
              child: SizedBox(
                height: 20,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: buildIndicators(),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _pgController.dispose();
    super.dispose();
  }
}
