import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'Pages/HomePage.dart';
import 'Pages/SignInScreen.dart';
import 'Pages/SignUpScreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Define your Firebase project configuration
  final FirebaseOptions firebaseConfig = FirebaseOptions(
    apiKey: "AIzaSyAfOAc9rcthR7-ehxlodwVkn2t1AgtD0xU",
    appId: "1:637676928676:android:5ca433454f2819081f7031",
    messagingSenderId: "637676928676",
    projectId: "login-f706d",
  );

  await Firebase.initializeApp(options: firebaseConfig);
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'SignIn',
      routes: {
        'Home': (route) => HomePage(),
        'SignIn': (route) => SignUpPage(),
        'SignUp': (route) => SignIn(),
      },
      theme: ThemeData(fontFamily: "Poppins"),
    );
  }
}
