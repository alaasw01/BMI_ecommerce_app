// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:iti_project/modules/popular_item_screen.dart';
import 'package:iti_project/shared/component.dart';

import '../models/flower_item.dart';

class ItemScreen extends StatelessWidget {
  ItemScreen({super.key});

  List<FlowerModel> FlowerList = [
    FlowerModel(
        imagePath: 'assets/images/image2.png',
        title: 'Flower bounquet',
        desc: 'red, white, blue',
        price: 40,
        cancelPrice: 50),
        FlowerModel(
        imagePath: 'assets/images/image3.png',
        title: 'Flower bounquet',
        desc: 'red, white, yellow',
        price: 100,
        cancelPrice: 120),
        FlowerModel(
        imagePath: 'assets/images/image4.png',
        title: 'Flower bounquet',
        desc: 'red, white, yellow',
        price: 30,
        cancelPrice: 70),
        
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 30.0,
        elevation: 0.0,
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.menu,
              color: Colors.black,
            )),
        title: Row(
          children: [
            Icon(
              Icons.location_on_outlined,
              color: Colors.black,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      'Current location',
                      style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    Icon(
                      Icons.arrow_drop_down_outlined,
                      color: Colors.black,
                    )
                  ],
                ),
                Text(
                  'Menofia,Sadat city',
                  style: TextStyle(fontSize: 14.0, color: Colors.grey[500]),
                ),
              ],
            )
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: Colors.black,
              ))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset('assets/images/banner.jpg'),
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                children: [
                  Text(
                    'Popular item',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Spacer(),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) =>
                              PopularItemScreen()));
                    },
                    child: Text(
                      'View all',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 182, 91, 121),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Center(
                child: Container(
                  height: 200,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => buildFlowerItem(
                      imagePath: FlowerList[index].imagePath,
                      title: FlowerList[index].title,
                      desc: FlowerList[index].desc,
                      price: FlowerList[index].price,
                      cancelPrice: FlowerList[index].cancelPrice,
                    ),
                    separatorBuilder: (context, index) => SizedBox(
                      width: 10.0,
                    ),
                    itemCount: FlowerList.length,
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                children: [
                  Text(
                    'New item',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Spacer(),
                  InkWell(
                    child: Text(
                      'View all',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 182, 91, 121),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Center(
                child: Container(
                  height: 200,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => buildFlowerItem(
                      imagePath: FlowerList[index].imagePath,
                      title: FlowerList[index].title,
                      desc: FlowerList[index].desc,
                      price: FlowerList[index].price,
                      cancelPrice: FlowerList[index].cancelPrice,
                    ),
                    separatorBuilder: (context, index) => SizedBox(
                      width: 10.0,
                    ),
                    itemCount: FlowerList.length,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
