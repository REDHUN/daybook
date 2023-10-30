import 'package:flutter/material.dart';

class ModelPageTextfiled extends StatelessWidget {
  const ModelPageTextfiled(
      {super.key, required this.controllertext, required this.hint});
  final hint;
  final controllertext;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(6),
      color: Colors.white,
      height: 30,
      width: MediaQuery.of(context).size.width / 3,
      child: TextField(
        controller: controllertext,
        textAlign: TextAlign.center,
        decoration: InputDecoration(
            hintText: hint.toString(),
            fillColor: Colors.white,
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.white, width: 1.5),
              //borderRadius: BorderRadius.circular(8.0),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.white, width: 1.5),
              // borderRadius: BorderRadius.circular(8.0),
            ),
            contentPadding: EdgeInsets.all(0),
            // border: OutlineInputBorder(),
            hintStyle: TextStyle(color: Colors.black)),
      ),
    );
  }
}
