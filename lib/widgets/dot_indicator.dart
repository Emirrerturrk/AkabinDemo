import 'package:akabin_demo/theme/dark_theme.dart';
import 'package:flutter/material.dart';

class DotIndicator extends StatelessWidget {
  const DotIndicator({super.key, this.isActive = false});

  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: dotValues().dotDuration,
      height: isActive ? dotValues().selectedDot : dotValues().unSelectedDot,
      width: dotValues().dotWidth,
      decoration: BoxDecoration(
          color: isActive
              ? CustomColors().mainGreen
              : CustomColors().mainGreen.withOpacity(0.4),
          borderRadius: dotValues().circularDot),
    );
  }
}

class dotValues {
  final double selectedDot = 12;
  final double unSelectedDot = 4;
  final Duration dotDuration = const Duration(milliseconds: 300);
  final double dotWidth = 4;
  final BorderRadius circularDot = const BorderRadius.all(Radius.circular(12));
}
