// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:iti_project/modules/login_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  var formKey = GlobalKey<FormState>();
  var textController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  bool obscureText = true;
  void changeShowPassword() {
    obscureText =! obscureText;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Welcome to our',
                          style: TextStyle(
                              fontSize: 40.0, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Flower shop',
                          style: TextStyle(
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 182, 91, 121),),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Text(
                          'Name',
                          style: TextStyle(
                              fontSize: 15.0,
                              color: Colors.grey,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: TextFormField(
                          controller: textController,
                          validator: (value) {
                            if (textController.text.isEmpty) {
                              return 'Name must be not empty';
                            } else if (textController.text.length < 8) {
                              return 'Name must be more than 8 letter';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.verified_user_rounded,color: const Color.fromARGB(255, 85, 50, 4)),
                            filled: true,
                            fillColor: Colors.grey[200],
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Text(
                          'Email',
                          style: TextStyle(
                              fontSize: 15.0,
                              color: Colors.grey,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                          child: TextFormField(
                            controller: emailController,
                            validator: (value) {
                              if (emailController.text.isEmpty) {
                                return 'email must be not empty';
                              } else if (emailController.text.length < 8) {
                                return 'Name must be more than 8 letter';
                              } else if (!emailController.text.contains('@')) {
                                return 'email must be containt @ sign';
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.email,color: const Color.fromARGB(255, 85, 50, 4)),
                              filled: true,
                              fillColor: Colors.grey[200],
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Text(
                          'Password',
                          style: TextStyle(
                              fontSize: 15.0,
                              color: Colors.grey,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: TextFormField(
                          obscureText: obscureText,
                          validator: (value) {
                            if (passwordController.text.isEmpty) {
                              return 'password must be not empty';
                            } else if (passwordController.text.length < 8) {
                              return 'password must be more than 8 letter';
                            }
                            return null;
                          },
                          controller: passwordController,
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.lock,color: const Color.fromARGB(255, 85, 50, 4),),
                            suffixIcon: IconButton(
                              color: const Color.fromARGB(255, 85, 50, 4),
                              onPressed: () {
                                setState(() {
                                changeShowPassword();
                                  
                                });
                              },
                              icon: Icon(
                                // Based on passwordVisible state choose the icon
                                obscureText?
                                    Icons.visibility
                                    : Icons.visibility_off,
                              ),
                            ),
                            //isShow? Icon(Icons.visibility):Icon(Icons.visibility_off),
                            filled: true,
                            fillColor: Colors.grey[200],
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Sign up',
                            style: TextStyle(
                                fontSize: 25.0, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 120.0,
                          ),
                          Container(
                              width: 75.0,
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 182, 91, 121),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      formKey.currentState!.validate();
                                    });
                                  },
                                  icon: Icon(
                                    Icons.arrow_right_alt_sharp,
                                    size: 30.0,
                                    color: Colors.white,
                                    
                                  ))),
                        ],
                      ),
                      SizedBox(
                        height: 30.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Already have account?  ',
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          LoginScreen()));
                            },
                            child: Text(
                              'Login',
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 182, 91, 121),
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
