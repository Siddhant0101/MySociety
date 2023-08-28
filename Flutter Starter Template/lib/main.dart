import 'package:flutter/material.dart';
import 'package:startertemplate/pages/login_page.dart';
import 'package:google_fonts/google_fonts.dart';

/*

S T A R T

This is the starting point for all apps. 
Everything starts at the main function

*/
void main() {
  // lets run our app
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme),
      ),
      // this is bringing us to the LoginPage first
      home: LoginPage(),
    );
  }
}
