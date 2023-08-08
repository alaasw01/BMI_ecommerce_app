// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, unused_local_variable

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'dart:math';

import 'package:iti_project/modules/bmi/cubit/bmi_cubit.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class BmiScreen extends StatefulWidget {
  const BmiScreen({super.key});

  @override
  State<BmiScreen> createState() => _BmiScreenState();
}

class _BmiScreenState extends State<BmiScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
        title: Text('BMI Calculator'),
      ),
      body: BlocConsumer<BmiCubit, BmiState>(
        listener: (context, state) {},
        builder: (context, state) {
          final cubit = context.read<BmiCubit>();
          return Column(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            cubit.changeGnder(true);
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color:
                                  cubit.isMale ? Colors.blue : Colors.grey[400],
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.male,
                                  size: 60.0,
                                ),
                                Text(
                                  '${AppLocalizations.of(context)!.male}',
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            cubit.changeGnder(false);
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color:
                                  cubit.isMale ? Colors.grey[400] : Colors.pink,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.female,
                                  size: 60.0,
                                ),
                                Text(
                                  '${AppLocalizations.of(context)!.female}',
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20.0,
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[400],
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '${AppLocalizations.of(context)!.height}',
                          style: TextStyle(
                            fontSize: 23.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '${cubit.height.round()}',
                              style: TextStyle(
                                fontSize: 30.0,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            Text(
                              '${AppLocalizations.of(context)!.cm}',
                              style: TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Slider(
                            activeColor: Colors.deepPurple,
                            value: cubit.height,
                            min: 80.0,
                            max: 220.0,
                            onChanged: (val) {
                              cubit.chaangeHeight(val);
                            }),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.grey[400],
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '${AppLocalizations.of(context)!.age}',
                                style: TextStyle(
                                  fontSize: 23.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                '${cubit.age}',
                                style: TextStyle(
                                  fontSize: 30.0,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  FloatingActionButton(
                                    backgroundColor: Colors.deepPurple,
                                    mini: true,
                                    onPressed: () {
                                      cubit.ageDencrement();
                                    },
                                    child: Icon(
                                      Icons.remove,
                                    ),
                                  ),
                                  FloatingActionButton(
                                    backgroundColor: Colors.deepPurple,
                                    mini: true,
                                    onPressed: () {
                                      cubit.ageIncrement();
                                    },
                                    child: Icon(
                                      Icons.add,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.grey[400],
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '${AppLocalizations.of(context)!.weight}',
                                style: TextStyle(
                                  fontSize: 23.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                '${cubit.weight}',
                                style: TextStyle(
                                  fontSize: 30.0,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  FloatingActionButton(
                                    backgroundColor: Colors.deepPurple,
                                    mini: true,
                                    onPressed: () {
                                      cubit.weightDecrement();
                                    },
                                    child: Icon(
                                      Icons.remove,
                                    ),
                                  ),
                                  FloatingActionButton(
                                    backgroundColor: Colors.deepPurple,
                                    mini: true,
                                    onPressed: () {
                                      cubit.weightIncrement();
                                    },
                                    child: Icon(
                                      Icons.add,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                color: Colors.deepPurple,
                child: MaterialButton(
                   height: 60.0,
                  onPressed: () {
                    var result = cubit.weight / pow(cubit.height / 100, 2);
                    print(result.round());
                    String message;
                    if (result < 10.5) {
                      message = 'Underweight.';
                    } else if (result >= 18.5 && result < 24.9) {
                      message = 'Normal.';
                    } else if (result >= 25 && result < 29.9) {
                      message = 'Overweight.';
                    } else {
                      message = 'Obese.';
                    }

                    showDialog(
                      context: context,
                       builder: (BuildContext context) {
                         return AlertDialog(
                        title: Text('BMI Result'),
                        content: Text('Your BMI is :${result.toStringAsFixed(2)}\n\nYou are:  $message'),
                        actions: [
                          TextButton(
                            onPressed: (){
                              Navigator.of(context).pop();
                          }, child: Text('OK'))
                        ],

                       );
                       },
                       
                       );
                  },
                 
                  child: Text(
                   ' ${AppLocalizations.of(context)!.calculate}',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
