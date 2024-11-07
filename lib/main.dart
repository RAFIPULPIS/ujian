import 'package:flutter/material.dart';
import 'package:ujian/Homepage.dart';
import 'package:ujian/Last.dart';
import 'package:ujian/apa.dart';
import 'package:ujian/splash.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        '/home': (context) => Homepage(),
        '/last': (context) => Last(),
        '/apa': (context) => Apa(),
        
      },
    );
  }
}
