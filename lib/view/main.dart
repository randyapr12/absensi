
import 'package:absensi/screen/splashscreen.dart';
import 'package:flutter/material.dart';
import 'package:absensi/screen/home.dart';
import 'package:absensi/screen/login.dart';
import 'package:absensi/screen/register.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/": (context) => SplashScreen(),
        '/login': (context) => LoginPage(),
        '/register': (context) => RegisterPage(),
        '/home': (context) => HomePage(),
      },
      initialRoute: "/",
    );
  }
}