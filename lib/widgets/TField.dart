import 'package:flutter/material.dart';

class Tfield extends StatelessWidget {
  String label;
  bool obscureText;

  Tfield({required this.label, this.obscureText = false });
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: const Color.fromARGB(214, 255, 255, 255),
      ),
      child: TextField(

        obscureText: obscureText,
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: const Color.fromARGB(255, 0, 0, 0)),
          ),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
          labelText: label,
          labelStyle: TextStyle(color: const Color.fromARGB(255, 0, 0, 0)),
      
        ),
      ),
    );
  }
}
