import 'package:flutter/material.dart';
import 'package:iti_project/modules/signup_screen.dart';
class Onboarding3 extends StatefulWidget {
  const Onboarding3({super.key});

  @override
  State<Onboarding3> createState() => _Onboarding3State();
}

class _Onboarding3State extends State<Onboarding3> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/image4.png'),
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
                'We will deliver the flowers ',
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.grey[700],
                ),
              ),
              Text(
                'best & quickly',
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
                  CircleAvatar(
                    backgroundColor: Color.fromARGB(255, 182, 91, 121),
                    radius: 4.0,
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                
                ],
              ),
              SizedBox(height: 50.0,),
                Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      MaterialButton(
                        
                        color: Color.fromARGB(255, 182, 91, 121),
                        onPressed: (){
                           Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (BuildContext context) => SignUpScreen()));
                        },
                      child: Text('Next',style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),),
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