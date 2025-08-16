import 'package:flutter/material.dart';

class StyleScreen extends StatelessWidget {
  final Color color = Colors.blue;
  const StyleScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: -100,
          left: -70,
          child: Container(
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(300),
            ),
            width: 300,
            height: 300,
            child: Text(""),
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          child: Container(
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 4, 5, 5),
              //borderRadius: BorderRadius.circular(300),
            ),
            width: 400,
            height: 350,
            child: Text(""),
          ),
        ),
        Positioned(
          bottom: 150,
          left: -10,
          right: -10,
          child: Container(
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 0, 0, 0),
              borderRadius: BorderRadius.circular(200),
            ),
            width: 400,
            height: 300,
            child: Text(""),
          ),
        ),
      ],
    );
  }
}
