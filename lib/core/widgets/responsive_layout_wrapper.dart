import 'package:flutter/material.dart';

class ResponsiveLayoutWrapper extends StatelessWidget {
  const ResponsiveLayoutWrapper({
    required this.mobilePortraitLayout,
    required this.mobileLandscapeLayout,
    required this.tabletPortraitLayout,
    required this.tabletLandscapeLayout,
    required this.desktopLayout,
    super.key,
  });

  final Widget mobilePortraitLayout;
  final Widget mobileLandscapeLayout;
  final Widget tabletPortraitLayout;
  final Widget tabletLandscapeLayout;
  final Widget desktopLayout;

  static const int mobilePortraitBreakpoint = 600;
  static const int mobileLandscapeBreakpoint = 960;
  static const int tabletPortraitBreakpoint = 840;
  static const int tabletLandscapeBreakpoint = 1440;
  static const int desktopBreakpoint = 1920;

  static bool isMobilePortrait(BuildContext context) => MediaQuery.of(context).size.width < mobilePortraitBreakpoint;

  static bool isMobileLandscape(BuildContext context) =>
      MediaQuery.of(context).size.width < mobileLandscapeBreakpoint &&
      MediaQuery.of(context).size.width >= mobilePortraitBreakpoint;

  static bool isTabletPortrait(BuildContext context) =>
      MediaQuery.of(context).size.width < tabletPortraitBreakpoint &&
      MediaQuery.of(context).size.width >= mobileLandscapeBreakpoint;

  static bool isTabletLandscape(BuildContext context) =>
      MediaQuery.of(context).size.width < tabletLandscapeBreakpoint &&
      MediaQuery.of(context).size.width >= tabletPortraitBreakpoint;

  static bool isDesktop(BuildContext context) => MediaQuery.of(context).size.width >= desktopBreakpoint;

  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;

    if (isDesktop(context)) {
      return desktopLayout;
    } else if (isTabletLandscape(context)) {
      return orientation == Orientation.portrait ? tabletPortraitLayout : tabletLandscapeLayout;
    } else if (isTabletPortrait(context)) {
      return orientation == Orientation.portrait ? tabletPortraitLayout : tabletLandscapeLayout;
    } else if (isMobileLandscape(context)) {
      return orientation == Orientation.portrait ? mobilePortraitLayout : mobileLandscapeLayout;
    } else {
      return orientation == Orientation.portrait ? mobilePortraitLayout : mobileLandscapeLayout;
    }
  }
}
