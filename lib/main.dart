import 'package:flutter/material.dart';
import 'package:instagram_series/Screens/Splash/splashscreen.dart';

import 'Screens/Login/loginscreen.dart';

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
      title: 'Instagram',
      theme: ThemeData.dark(),
      home: SplashScreen()
    );
  }
}

