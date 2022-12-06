import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:qwertyui/Imtihon/Imtihon_model.dart';

class Delivery extends StatefulWidget {
  const Delivery({Key? key}) : super(key: key);

  @override
  State<Delivery> createState() => _DeliveryState();
}

class _DeliveryState extends State<Delivery> {
  List data = [
    "assets/images/BG.png",
    "assets/images/BG2.png",
    "assets/images/BG3.png",
  ];
  List avatar = [
    'assets/images/Rectangle.png',
    'assets/images/Rectangle.png',
    'assets/images/Rectangle2.png',
    'assets/images/Rectangle3.png',
  ];
  List avatar2 = [
    'assets/images/a1.png',
    'assets/images/a2.png',
    'assets/images/a1.png',
    'assets/images/a2.png',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Text(
                    "Delivery to",
                    style: TextStyle(color: Colors.green, fontSize: 18),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "San Francisco",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
                Icon(Icons.expand_more_outlined),
                Padding(
                  padding: EdgeInsets.only(left: 30),
                  child: Text("Filter"),
                ),
              ],
            ),
            Expanded(
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: data.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 30),
                          child: SizedBox(
                            height: 180,
                            child: Image.asset(data[index]),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(14.0),
                              child: Text(
                                "McDonald's",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 25),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 0, left: 14),
                              child: Text(
                                "\$\$",
                                style:
                                    TextStyle(fontSize: 13, color: Colors.grey),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 0, left: 20),
                              child: Text(
                                "Chinise",
                                style:
                                    TextStyle(fontSize: 13, color: Colors.grey),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 0, left: 26),
                              child: Text(
                                "American",
                                style:
                                    TextStyle(fontSize: 13, color: Colors.grey),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 0, left: 32),
                              child: Text(
                                "Deshi Food",
                                style:
                                    TextStyle(fontSize: 13, color: Colors.grey),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 50,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 0, left: 14),
                                child: Text(
                                  "4.3",
                                  style: TextStyle(
                                    fontSize: 10,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 0, left: 7),
                                child: Icon(
                                  Icons.star_sharp,
                                  color: Colors.green,
                                  size: 18,
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 0, left: 14),
                                child: Text(
                                  "200+ Ratings",
                                  style: TextStyle(
                                    fontSize: 10,
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 0, left: 18),
                                child: Icon(
                                  Icons.alarm,
                                  color: Colors.black,
                                  size: 18,
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 0, left: 10),
                                child: Text(
                                  "25 Min",
                                  style: TextStyle(
                                      fontSize: 10, color: Colors.grey),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 0, left: 18),
                                child: Icon(
                                  Icons.donut_large_outlined,
                                  color: Colors.grey,
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 0, left: 10),
                                child: Text(
                                  "Free",
                                  style: TextStyle(
                                      fontSize: 10, color: Colors.grey),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    );
                  }),
            ),
            Row(
              children: [
                Text(
                  'Type of Foods',
                  style: TextStyle(color: Colors.black, fontSize: 24),
                ),
                Spacer(),
                Text(
                  'See All',
                  style: TextStyle(color: Colors.green, fontSize: 16),
                )
              ],
            ),
            SizedBox(
              height: 100,
              child: ListView.builder(
                  itemCount: avatar.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 100,
                      width: 100,
                      margin: EdgeInsets.only(right: 16),
                      decoration: BoxDecoration(
                        color: Colors.blue,
                      ),
                      child: Image.asset(avatar[index]),
                    );
                  }),
            ),
            SizedBox(height: 32,),

            Row(
              children: [
                Text(
                  'New Restaurants',
                  style: TextStyle(color: Colors.black, fontSize: 24),
                ),
                Spacer(),
                Text(
                  'See All',
                  style: TextStyle(color: Colors.green, fontSize: 16),
                )
              ],
            ),

            SizedBox(
              height: 100,
              child: ListView.builder(
                  itemCount: avatar2.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 100,
                      width: 100,
                      margin: EdgeInsets.only(right: 16),
                      decoration: BoxDecoration(
                        color: Colors.blue,
                      ),
                      child: Image.asset(avatar2[index],
                        fit: BoxFit.cover,
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
