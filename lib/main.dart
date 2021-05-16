import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moda/screens/first_screen.dart';
import 'package:moda/screens/login_register_screen.dart';
import 'package:moda/screens/profile_screen.dart';

void main() {
  runApp(
    MaterialApp(
      home: FirstScreen(),
      routes: {
        FirstScreen.id: (context) => FirstScreen(),
        AuthScreen.id: (context) => AuthScreen(),
        ProfileScreen.id: (context) => ProfileScreen(),
      },
      debugShowCheckedModeBanner: false,
    ),
  );
}
