import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:registration/widgets/GDButton.dart';
import 'package:registration/widgets/StyleScreen.dart';
import 'package:registration/widgets/TButton.dart';
import 'package:registration/widgets/TField.dart';
import 'package:registration/widgets/Titlepage.dart';


class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          StyleScreen(),
          Positioned(
            top: 250,
            left: 30,
            right: 30,
            child: Column(
              children: [
                Titlepage(Title: 'Forgot Password?'),
                SizedBox(height: 50),
                Tfield(label: 'Email'),
                SizedBox(height: 20),

                SizedBox(height: 20),
                GDButton(NameButton: 'Reset Password', onPressed: () {}),

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
