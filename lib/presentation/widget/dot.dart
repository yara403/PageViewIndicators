import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:pageview_with_indicators/theme/app_theme.dart';

import '../presentation_controller.dart';

class DotWidget extends StatefulWidget {
  final VoidCallback onTap;
  final int index;
  final PresentationController controller;

  const DotWidget({
    Key? key,
    required this.onTap,
    required this.index,
    required this.controller,
  }) : super(key: key);

  @override
  State<DotWidget> createState() => _DotWidgetState();
}

class _DotWidgetState extends State<DotWidget> {
  double? _width;
  double? _height;
  Color? _color;

  @override
  void initState() {
    autorun((_) {
      if (widget.controller.selectedIndex == widget.index) {
        highlightDot();
      } else {
        resetDot();
      }
    });
    super.initState();
  }

  highlightDot() {
    setState(() {
      _width = 16;
      _height = 16;
      _color = AppTheme.colors.highlightedDot;
    });
  }

  resetDot() {
    setState(() {
      _width = 12;
      _height = 12;
      _color = AppTheme.colors.dot;
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      child: AnimatedContainer(
        width: _width,
        height: _height,
        margin: const EdgeInsets.symmetric(
          horizontal: 8,
        ),
        decoration: BoxDecoration(
          color: _color,
          shape: BoxShape.circle,
        ),
        duration: const Duration(
          seconds: 1,
        ),
        curve: Curves.fastOutSlowIn,
      ),
    );
  }
}
