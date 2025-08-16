import 'package:flutter/material.dart';
import 'package:registration/widgets/GDButton.dart';
import 'package:registration/widgets/StyleScreen.dart';
import 'package:registration/widgets/TButton.dart';
import 'package:registration/widgets/TField.dart';
import 'package:registration/widgets/Titlepage.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          StyleScreen(),
          Positioned(
            top: 150,
            left: 30,
            right: 30,
            child: Column(
              children: [
                Titlepage(Title: 'Create Your Account'),
                SizedBox(height: 50),
                Tfield(label: 'Name'),
                SizedBox(height: 20),
                Tfield(label: 'Email'),
                SizedBox(height: 20),
                Tfield(label: 'Password', obscureText: true),
                SizedBox(height: 20),
                Tfield(label: ' Confirm Password', obscureText: true),
                SizedBox(height: 10),
                SizedBox(height: 20),
                GDButton(NameButton: 'Sign up', onPressed: () {}),
                SizedBox(height: 20),
                Row(
                  children: [
                    Expanded(
                      child: Divider(
                        color: const Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                    Text(
                      "  Or Sign up with  ",
                      style: TextStyle(color: Colors.white),
                    ),
                    Expanded(
                      child: Divider(
                        color: const Color.fromRGBO(255, 255, 255, 1),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.facebook, color: Colors.white, size: 30),
                    SizedBox(width: 20),
                    Icon(Icons.email, color: Colors.white, size: 30),
                  ],
                ),
                SizedBox(height: 20),
                TButton(
                  NameButton: 'Back ',
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
