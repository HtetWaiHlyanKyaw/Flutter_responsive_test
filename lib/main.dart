import 'package:flutter/material.dart';
import 'package:responsive_test/deskstop_scaffold.dart';
import 'package:responsive_test/mobile_scaffold.dart';
import 'package:responsive_test/responsive_page.dart';
import 'package:responsive_test/tablet_scaffold.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: ResponsivePage(
            mobileScaffold: MobileScaffold(),
            tabletScaffold: TabletScaffold(),
            deskstopScaffold: DeskstopScaffold()));
  }
}
