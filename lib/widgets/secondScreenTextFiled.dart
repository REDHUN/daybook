import 'package:flutter/material.dart';

class SecondTextFiled extends StatelessWidget {
  const SecondTextFiled({super.key, required this.data});
  final data;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.white),
      height: 25,
      width: 100,
      child: TextField(
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        controller: data,
        decoration: InputDecoration(
            fillColor: Colors.white,
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.white, width: 1.5),
              borderRadius: BorderRadius.circular(8.0),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.white, width: 1.5),
              borderRadius: BorderRadius.circular(8.0),
            ),
            contentPadding: EdgeInsets.all(0),
            border: OutlineInputBorder(),
            hintStyle: TextStyle(color: Colors.grey[400])),
      ),
    );
  }
}
