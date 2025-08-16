import 'package:flutter/material.dart';

class TButton extends StatelessWidget {
  String NameButton;
final VoidCallback onPressed;
  TButton({required this.NameButton,required this.onPressed, super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        NameButton,
        style: TextStyle(
          color: Colors.blue,
          // fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
