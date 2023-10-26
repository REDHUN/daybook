import 'package:flutter/material.dart';

class TextFiledDesign extends StatelessWidget {
  const TextFiledDesign(
      {super.key, required this.hint, required this.ControllerText});
  final hint;
  final ControllerText;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(30))),
      height: 25,
      width: MediaQuery.of(context).size.width / 4,
      child: TextFormField(
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        controller: ControllerText,
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
          hintText: hint,
          hintStyle: TextStyle(color: Colors.grey[400]),
        ),
      ),
    );
  }
}
