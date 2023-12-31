import 'package:flutter/material.dart';

class LastPageText extends StatelessWidget {
  const LastPageText({super.key, required this.text, required this.size});
  final text;
  final size;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: Color.fromARGB(255, 254, 203, 60),
          fontWeight: FontWeight.bold,
          fontSize: size),
    );
  }
}
