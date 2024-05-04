import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyTextField extends StatelessWidget {
  final controller;
  MyTextField({
    super.key,
    required this.controller,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: TextField(
        controller: controller,
        decoration: const InputDecoration(
          enabledBorder:
              OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
          focusedBorder: OutlineInputBorder(
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
