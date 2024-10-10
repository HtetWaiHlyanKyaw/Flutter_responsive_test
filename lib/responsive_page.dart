import 'package:flutter/material.dart';

class ResponsivePage extends StatelessWidget {
  // const ResponsivePage({super.key});

  final Widget mobileScaffold;
  final Widget tabletScaffold;
  final Widget deskstopScaffold;

  const ResponsivePage(
      {super.key,
      required this.mobileScaffold,
      required this.deskstopScaffold,
      required this.tabletScaffold});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 600) {
        return mobileScaffold;
      } else if (constraints.maxWidth < 1100) {
        return tabletScaffold;
      } else {
        return deskstopScaffold;
      }
    });
  }
}
