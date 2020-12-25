import 'package:UrbanChat/presentation/screens/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(UrbanChat());
}

class UrbanChat extends StatelessWidget {
  @override  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: SplashScreen(),
    );
  }
}

