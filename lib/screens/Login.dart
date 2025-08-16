import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:registration/screens/ForgotPassword.dart';
import 'package:registration/screens/SignUp.dart';
import 'package:registration/widgets/GDButton.dart';
import 'package:registration/widgets/StyleScreen.dart';
import 'package:registration/widgets/TButton.dart';
import 'package:registration/widgets/TField.dart';
import 'package:registration/widgets/Titlepage.dart';


class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final Color color = Colors.blue;

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
                Titlepage(Title: 'Welcome Back!'),
                SizedBox(height: 50),
                Tfield(label: 'Email'),
                SizedBox(height: 20),
                Tfield(label: 'Password', obscureText: true),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TButton(
                      NameButton: 'Forgot Password?',
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ForgotPassword(),
                          ),
                        );
                      },
                    ),
                  ],
                ),
                SizedBox(height: 10),
                GDButton(NameButton: 'Log in', onPressed: () {}),
                SizedBox(height: 20),
                Row(
                  children: [
                    Expanded(
                      child: Divider(
                        color: const Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                    Text(
                      "      or      ",
                      style: TextStyle(color: Colors.white),
                    ),
                    Expanded(
                      child: Divider(
                        color: const Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.facebook, color: Colors.white),
                    SizedBox(width: 30),
                    Icon(Icons.email, color: Colors.white),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account?",
                      style: TextStyle(color: Colors.white),
                    ),
                    TButton(
                      NameButton: 'Sign up',
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Signup()),
                        );
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
