// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'dart:async';

import 'package:flutter/material.dart';
import 'GetCurrentDateFormat.dart';
class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
@override
  void initState() {
    super.initState();
     
     Timer(Duration(seconds: 5), () { 

      Navigator.pushReplacement(
        context,
         MaterialPageRoute(
          builder: (context) => MyHomePage(title: "Tanuj") ,));


     });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue,
        child:Center(child: Text('Netflix',style: TextStyle(
          fontSize: 34,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),)),
      ),
    );
  }
}