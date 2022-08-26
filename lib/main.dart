import 'package:flutter/material.dart';
import 'package:responsive/responsive/mobile.dart';
import 'package:responsive/responsive/responsive_layout.dart';
import 'package:responsive/responsive/tablet.dart';
import 'package:responsive/responsive/web.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ResponsiveLayout(mobileScaffold: MobileScaffold(), tabletScaffold: TabletScaffold(), webScaffold: WebScaffold()),
    );
  }
}
