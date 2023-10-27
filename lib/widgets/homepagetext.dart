import 'package:flutter/material.dart';

class HomePageText extends StatelessWidget {
  const HomePageText({super.key, required this.text});
  final text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: const Color.fromARGB(255, 254, 203, 60),
          fontWeight: FontWeight.bold,
          fontSize: 17),
    );
  }
}
