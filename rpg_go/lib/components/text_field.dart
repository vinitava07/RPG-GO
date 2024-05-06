import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyTextField extends StatelessWidget {
  final controller;
  // ignore: non_constant_identifier_names
  String hint_text;
  MyTextField({super.key, required this.controller, required this.hint_text});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: TextField(
        controller: controller,
        decoration:  InputDecoration(
          hintText: hint_text,
          enabledBorder:
              const OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white38),
          ),
          fillColor: Colors.white,
          filled: true,
        ),
        cursorColor: Colors.black,
      ),
    );
  }
}
