import 'package:flutter/material.dart';

class Titlepage extends StatelessWidget {
  final String Title;
  const Titlepage({super.key, required this.Title});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Center(
        child: Text(
          Title,
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            fontFamily: 'PlaywriteAUQLD',
          ),
        ),
      ),
    );
  }
}
