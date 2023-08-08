// ignore_for_file: prefer_const_constructors, must_be_immutable, unused_import

import 'package:flutter/material.dart';
import 'package:iti_project/models/flower_item.dart';
import 'package:iti_project/modules/datails_screen.dart';
import 'package:iti_project/modules/item_screen.dart';
import 'package:iti_project/shared/component.dart';

class PopularItemScreen extends StatelessWidget {
  PopularItemScreen({super.key});

  List<FlowerModel> FlowerList = [
    FlowerModel(
        imagePath: 'assets/images/image2.png',
        title: 'Flower bounquet',
        desc: 'red, white, pink',
        price: 40,
        cancelPrice: 50),
        FlowerModel(
        imagePath: 'assets/images/image3.png',
        title: 'Flower bounquet',
        desc: 'red, blue, yellow',
        price: 100,
        cancelPrice: 150),FlowerModel(
        imagePath: 'assets/images/image4.png',
        title: 'Flower bounquet',
        desc: 'pink, white, purple',
        price: 35,
        cancelPrice: 40),FlowerModel(
        imagePath: 'assets/images/image2.png',
        title: 'Flower bounquet',
        desc: 'red, white, yellow',
        price: 50,
        cancelPrice: 100),FlowerModel(
        imagePath: 'assets/images/image4.png',
        title: 'Flower bounquet',
        desc: 'red, white, yellow',
        price: 80,
        cancelPrice: 85),FlowerModel(
        imagePath: 'assets/images/image3.png',
        title: 'Flower bounquet',
        desc: 'red, blue, pink',
        price: 15,
        cancelPrice: 25),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text(
          'Popular item',
          style: TextStyle(fontSize: 20.0, color: Colors.black),
        ),
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20.0),
        child: GestureDetector(
          onTap: () {},
          child: Container(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 182, 70, 108),
              borderRadius: BorderRadius.circular(20.0),
            ),
            width: double.infinity,
            height: 50.0,
            child: Center(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.lock,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 6.0,
                ),
                Text(
                  'Create own pack',
                  style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ],
            )),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: InkWell(
          onTap: (){
            
              Navigator.of(context).push(MaterialPageRoute(
                builder: (BuildContext context) => DetailsScreen()));
          },
          child: Container(
            child: GridView.builder(
                itemCount: FlowerList.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: 0.880),
                itemBuilder: (context, index) => buildFlowerItem(
                  imagePath: FlowerList[index].imagePath,
                  title: FlowerList[index].title,
                  desc: FlowerList[index].desc,
                  price: FlowerList[index].price,
                  cancelPrice: FlowerList[index].cancelPrice,
                )),
          ),
        ),
      ),
    );
  }
}
