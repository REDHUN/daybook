import 'package:flutter/material.dart';
import 'package:daybook/screens/homepage.dart';

var kColorScheme =
    ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 14, 216, 223));
var kDarkScheme = ColorScheme.fromSeed(
  brightness: Brightness.dark,
  seedColor: Color.fromARGB(255, 11, 165, 207),
);
ThemeData _baseTheme = ThemeData(
  fontFamily: "Roboto",
  canvasColor: Colors.transparent,
);
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: _baseTheme,
      debugShowCheckedModeBanner: false,
      title: 'Reading',
      home: HomePage(),
    );
  }
}
