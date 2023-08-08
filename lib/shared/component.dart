// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

Widget buildSocialItem(
  {
    required String imagePath,
  }
)=>  Row(
  children: [
        InkWell(
          onTap: (){},
          child: CircleAvatar(
            radius: 20.0,
            backgroundColor: Colors.white,
            backgroundImage: NetworkImage('$imagePath'),
            //child: Image.network('$imagePath'),
            ),
        ),
    SizedBox(width: 20.0,),
  ],
);

Widget buildFlowerItem(
  {
    required String imagePath,
    required String title,
    required String desc,
    required int price,
    required int cancelPrice,
  }
)=>Container(
                width: 250.0,
                height: 250.0,
                padding: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.withOpacity(0.3)),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Expanded(
                  child: Column(
                    children: [
                      Image.asset(
                        '$imagePath',
                        height: 70.0,
                      ),
                      Row(
                        children: [
                          Text(
                            '$title',
                            style: TextStyle(
                              fontSize: 16.0,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 4.0,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              '$desc',
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(fontSize: 14.0, color: Colors.grey),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Row(
                        children: [
                          Text(
                            '\$${price}',
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            width: 4.0,
                          ),
                          Text(
                            '\$${cancelPrice}',
                            style: TextStyle(
                                fontSize: 14.0,
                                color: Colors.grey,
                                decoration: TextDecoration.lineThrough),
                          ),
                          Spacer(),
                          Padding(
                            padding: const EdgeInsets.only(right: 10.0),
                            child: CircleAvatar(
                               maxRadius: 16.0,
                              backgroundColor: Color.fromARGB(255, 182, 91, 121),
                              child: Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              );

