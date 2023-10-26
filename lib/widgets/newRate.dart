import 'package:flutter/material.dart';

class NewRate extends StatelessWidget {
  const NewRate({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: Color.fromARGB(255, 133, 206, 136),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30))),
      width: double.infinity,
      height: MediaQuery.of(context).size.height / 2,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                border: Border(bottom: BorderSide(color: Colors.grey))),
            child: TextField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Name",
                  hintStyle: TextStyle(color: Colors.grey[400])),
            ),
          ),
        ],
      ),
    );
  }
}
