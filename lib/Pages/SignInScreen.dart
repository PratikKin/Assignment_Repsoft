import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Components/PasswordField.dart';
import '../Components/TextFieldSignUp.dart';
import '../Firebase_auth/firebase_auth_services.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final FirebaseAuthService _auth = FirebaseAuthService();
  final TextEditingController _signEmail = TextEditingController();
  final TextEditingController _signPassword = TextEditingController();

  bool _obscureText = true;

  @override
  void dispose() {
    _signEmail.dispose();
    _signPassword.dispose();
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
            "Sign In",
            style: TextStyle(
              color: Color(0xff1F7F8B),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Sign In your account",
              style: TextStyle(
                fontSize: 18.0,
              ),
            ),
            const SizedBox(
              height: 26.40,
            ),
            TextFieldSignUp(
              controller: _signEmail,
              iconUsed: CupertinoIcons.mail,
              hintText: "Email",
            ),
            const SizedBox(
              height: 26.40,
            ),
            PasswordField(
              controller: _signPassword,
              iconUsed: CupertinoIcons.lock,
              hintText: "Password",
              obscureText: _obscureText,
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
                  // Navigator.pushNamed(context, "Home");
                  _signIn();
                },
                child: const Center(
                  child: Text(
                    "Sign In",
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
                  "Don't have an account ? ",
                  style: TextStyle(
                    color: Color(0xffA1A5B7),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(
                        context,
                        "SignIn",
                      );
                    },
                    child: const Text(
                      "Sing Up",
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
    );
  }

  Future<void> _signIn() async {
    String email = _signEmail.text;
    String password = _signPassword.text;

    User? user = await _auth.signInWithEmailPass(email, password);

    if (user != null) {
      print("User is successfully signedIn");
      Navigator.pushNamed(context, "Home");
    } else {
      print("Some error occured");
    }
  }
}
