import 'package:agri_tayo/screens/home_page.dart';
import 'package:agri_tayo/screens/signup_page.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

import "screens/login_page.dart";


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AgriTayo PH',

      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        textTheme: GoogleFonts.poppinsTextTheme(),
        useMaterial3: true,
        scaffoldBackgroundColor: const Color(0xffEBF5ED),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xffEBF5ED)
        )
      ),
      home: const HomePage(),
    );
  }
}
