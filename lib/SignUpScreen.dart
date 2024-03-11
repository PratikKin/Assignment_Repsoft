import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Components/PasswordField.dart';
import 'Components/TextFieldSignUp.dart';
import 'Firebase_auth/firebase_auth_services.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final FirebaseAuthService _auth = FirebaseAuthService();

  final TextEditingController _name = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final TextEditingController _confirmPassword = TextEditingController();

  bool _obscureText = true;
  bool _obscureTextCnf = true;

  @override
  void dispose() {
    _name.dispose();
    _email.dispose();
    _password.dispose();
    _confirmPassword.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: Icon(
            CupertinoIcons.back,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        leadingWidth: 0.0,
        title: const Center(
          child: Text(
            "Sign Up",
            style: TextStyle(
              color: Color(0xff1F7F8B),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Create account and enjoy all services",
                style: TextStyle(
                  fontSize: 18.0,
                ),
              ),
              const SizedBox(
                height: 26.40,
              ),
              TextFieldSignUp(
                controller: _name,
                iconUsed: CupertinoIcons.person,
                hintText: 'Full Name',
              ),
              const SizedBox(
                height: 26.40,
              ),
              TextFieldSignUp(
                controller: _email,
                iconUsed: CupertinoIcons.mail,
                hintText: 'Email',
              ),
              const SizedBox(
                height: 26.40,
              ),
              PasswordField(
                controller: _password,
                iconUsed: CupertinoIcons.lock,
                hintText: "Password",
                obscureText: _obscureText,
              ),
              const SizedBox(
                height: 26.40,
              ),
              PasswordField(
                controller: _confirmPassword,
                iconUsed: CupertinoIcons.lock,
                hintText: "Confirm Password",
                obscureText: _obscureTextCnf,
              ),
              const SizedBox(
                height: 26.40,
              ),
              Container(
                height: 48,
                width: 390,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    color: const Color(0xff23213D)),
                child: GestureDetector(
                  onTap: () {
                    _signUp();
                    // Navigator.pushNamed(context, "Home");
                  },
                  child: const Center(
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 26.40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Already have an account ? ",
                    style: TextStyle(
                      color: Color(0xffA1A5B7),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(
                          context,
                          "SignUp",
                        );
                      },
                      child: const Text(
                        "Sing In",
                        style: TextStyle(
                          color: Color(0xff1F7F8B),
                          fontWeight: FontWeight.bold,
                        ),
                      )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _signUp() async {
    String username = _name.text;
    String email = _email.text;
    String password = _password.text;

    User? user = await _auth.signUpWithEmailPass(email, password);

    if (user != null) {
      print("User is successfully created");
      Navigator.pushNamed(context, "Home");
    } else {
      print("Some error occured");
    }
  }
}
