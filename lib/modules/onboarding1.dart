// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:iti_project/modules/onboarding2.dart';

class Onboarding1 extends StatefulWidget {
  const Onboarding1({super.key});

  @override
  State<Onboarding1> createState() => _Onboarding1State();
}

class _Onboarding1State extends State<Onboarding1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/image2.png'),
              SizedBox(
                height: 20.0,
              ),
              Text(
                'Welcome to e-Flower shop',
                style: TextStyle(
                    fontSize: 25.0,
                    color: Colors.grey[700],
                    fontWeight: FontWeight.bold),
              ),
              Text(
                'Give you every kinds of flower ',
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.grey[700],
                ),
              ),
              Text(
                'With Vectoria shop ',
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.grey[700],
                ),
              ),
              SizedBox(
                height: 50.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundColor: Color.fromARGB(255, 182, 91, 121),
                    radius: 4.0,
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.grey[600],
                    radius: 4.0,
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.grey[600],
                    radius: 4.0,
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                ],
              ),
              SizedBox(
                height: 50.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  MaterialButton(
                    color: Color.fromARGB(255, 182, 91, 121),
                    onPressed: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (BuildContext context) => Onboarding2()));
                    },
                    child: Text(
                      'Next',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
