import 'package:blog_app/screen/books.dart';
import 'package:blog_app/screen/splash.dart';
import 'package:flutter/material.dart';
import 'screen/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Blog app',
      theme: ThemeData(
//        fontFamily:
      ),
      home:  SplashScreen(),
    );
  }
}


