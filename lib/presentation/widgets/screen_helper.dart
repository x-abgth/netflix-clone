import 'package:flutter/material.dart';

class ScreenHelper extends StatelessWidget {
  final Widget mobile;
  final Widget sMobile;
  final Widget tablet;
  final Widget desktop;

  const ScreenHelper({
    Key? key,
    this.mobile = const SizedBox(),
    this.sMobile = const SizedBox(),
    this.tablet = const SizedBox(),
    this.desktop = const SizedBox(),
  }) : super(key: key);

  static bool isSmallMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 450.0;

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 800.0;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width >= 800.0 &&
      MediaQuery.of(context).size.width < 1200.0;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1200.0;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth >= 1200.0) {
          return desktop;
        } else if (constraints.maxWidth >= 800.0 &&
            constraints.maxWidth < 1200.0) {
          return tablet;
        } else if (constraints.maxWidth < 800 &&
            constraints.maxWidth >= 450.0) {
          return mobile;
        } else {
          return sMobile;
        }
      },
    );
  }
}