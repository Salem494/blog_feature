import 'dart:async';

import 'package:blog_app/constant/const.dart';
import 'package:blog_app/screen/Main.dart';
import 'package:flutter/material.dart';

import 'home.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 5),(){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>MainScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
        height: double.infinity,
        width: double.infinity,
        child: Image.asset('assets/down.png',
//         fit: BoxFit.cover,
         height: double.infinity,width:double.infinity ,));
  }
}
