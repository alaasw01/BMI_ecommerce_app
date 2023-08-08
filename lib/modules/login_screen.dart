// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:iti_project/modules/item_screen.dart';
import 'package:iti_project/shared/component.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
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
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 70.0,
                    backgroundColor: Colors.white,
                    backgroundImage: NetworkImage(

                        'https://content.wepik.com/statics/26917290/preview-page0.jpg'),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    'Welcome to our',
                    style:
                        TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 6.0,
                  ),
                  Text(
                    'E-Flower Shop',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontFamily: 'OoohBaby',
                      color: Color.fromARGB(255, 182, 91, 121),
                    ),
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  GestureDetector(
                    onTap: (){
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (BuildContext context) => ItemScreen()));
                    },
                    child: Container(
                      width: 300.0,
                      height: 40.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Color.fromARGB(255, 182, 91, 121),
                      ),
                      child: Center(
                        child: Text(
                          'Login with email',
                          style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Aharoni'
                              ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    'OR',
                    style:
                        TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      buildSocialItem(
                          imagePath:
                              'https://pixsector.com/cache/c2d6c2a1/av580aef89b415365fb9c.png'),
                      buildSocialItem(
                          imagePath:
                              'https://logowik.com/content/uploads/images/761_twitter.jpg'),
                      buildSocialItem(
                          imagePath:
                              'https://cdn-icons-png.flaticon.com/512/733/733613.png'),
                      buildSocialItem(
                          imagePath:
                              'https://img.freepik.com/free-icon/mac-os_318-10374.jpg'),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
