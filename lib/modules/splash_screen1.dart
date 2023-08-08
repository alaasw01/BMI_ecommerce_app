// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, unused_import

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:iti_project/modules/login_screen.dart';
import 'package:iti_project/modules/onboarding1.dart';
import 'package:iti_project/modules/signup_screen.dart';
import 'package:iti_project/shared/component.dart';

class Splash1 extends StatefulWidget {
  const Splash1({super.key});
  

  @override
  State<Splash1> createState() => _Splash1State();
}

class _Splash1State extends State<Splash1> {
  
  @override
  void initState() {
    Timer(
            Duration(seconds: 5),
                () =>
            Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (BuildContext context) => Onboarding1())));
    super.initState();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Center(
              child: Image.asset('assets/images/image1.png'),
                    ),
        ),
      ),
    ),
    );
  }
}
