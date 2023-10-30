import 'package:flutter/material.dart';

class AddRatePageText extends StatelessWidget {
  const AddRatePageText({super.key, required this.size, required this.text});

  final text;
  final size;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: Color.fromARGB(255, 10, 10, 10),
          fontWeight: FontWeight.bold,
          fontSize: size),
    );
  }
}
