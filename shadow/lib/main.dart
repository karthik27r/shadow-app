import 'package:flutter/material.dart';
import 'package:shadow/responsive/responsiveLayout.dart';
import 'package:shadow/screens/mobileScreen.dart';
import 'package:shadow/screens/webScreen.dart';
import 'package:shadow/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Shadow',
        theme:
            ThemeData.dark().copyWith(scaffoldBackgroundColor: backgroundColor),
        home: const ResposiveLayout(
          mobileScreenLayout: mobileScreenLayout(),
          webScreenLayout: webScreenLayout(),
        ));
  }
}
