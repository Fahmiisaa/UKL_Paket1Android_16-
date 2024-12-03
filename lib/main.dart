import 'package:flutter/material.dart';
import 'splash_screen.dart';

void main() {
  runApp(TixIDApp());
}

class TixIDApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TIX ID',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
    );
  }
}