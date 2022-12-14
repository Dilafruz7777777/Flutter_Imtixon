import 'package:flutter/material.dart';
import 'package:qwertyui/Amaliyot/Bobal_Drinks/Fake_Data.dart';
import 'package:qwertyui/Amaliyot/Bobal_Drinks/Menu.dart';

import 'Bobal_Model.dart';

class Menu2 extends StatefulWidget {
  const Menu2({Key? key}) : super(key: key);

  @override
  State<Menu2> createState() => _Menu2State();
}

class _Menu2State extends State<Menu2> {
  List title = [
    "Coffee",
    "Soda",
    "Milk Tea",
    "Latte",
    "Cappuccino",
    "Milk Thistle",
    "Black Tea",
    "Green Tea",
    "Cocoa",
    "Lemonade",
    "Juice",
  ];

  List numberK = [
    "20K",
    "21K",
    "15K",
    "18K",
    "26K",
    "29K",
    "32K",
    "37K",
    "13K",
    "24K",
    "29K",
  ];

  List gap = [
    "Include Topping+ 2k for jahe",
    "Include Topping+ 2k for jahe",
    "Include Topping+ 2k for jahe",
    "Include Topping+ 2k for jahe",
    "Include Topping+ 2k for jahe",
    "Include Topping+ 2k for jahe",
    "Include Topping+ 2k for jahe",
    "Include Topping+ 2k for jahe",
    "Include Topping+ 2k for jahe",
    "Include Topping+ 2k for jahe",
    "Include Topping+ 2k for jahe",
  ];

  List<Bobal> data = [
    Bobal(numberK: "20", title: "Coffee", gap: "qwertyu",backgraund: "assets/images/Coffee.png"),
    Bobal(numberK: "21", title: "Soda", gap: "qwertyu", backgraund: "assets/images/Soda.png"),
    Bobal(numberK: "15", title: "Milk Tea", gap: "qwertyu", backgraund: "assets/images/MilkTea.png"),
    Bobal(numberK: "18", title: "Latte", gap: "qwertyu", backgraund: "assets/images/Latte.png"),
    Bobal(numberK: "26", title: "Cappuccino", gap: "qwertyu", backgraund: "assets/images/Cappuccino.jpg"),
    Bobal(numberK: "29", title: "Milk Thistle", gap: "qwertyu", backgraund: "assets/images/MilkThistle.jpg"),
    Bobal(numberK: "32", title: "Black Tea", gap: "qwertyu", backgraund: "assets/images/BlackTea.jpg"),
    Bobal(numberK: "37", title: "Green Tea", gap: "qwertyu", backgraund: "assets/images/Matcha_green_tea.jpg"),
    Bobal(numberK: "13", title: "Cocoa", gap: "qwertyu", backgraund: "assets/images/Cocoa.jpg"),
    Bobal(numberK: "24", title: "Lemonade", gap: "qwertyu", backgraund: "assets/images/Lemonade.jpg"),
    Bobal(numberK: "29", title: "Juice", gap: "qwertyu", backgraund: "assets/images/Juice.jpg"),



  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: const Color(0xff233F3A),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) {
                  return Menu();
                }));
              },
              child: const Padding(
                padding: EdgeInsets.only(top: 50, left: 20),
                child: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                ),
              ),
            ),
            Row(
              children: const [
                Padding(
                  padding: EdgeInsets.only(top: 50, left: 20),
                  child: Text(
                    "Menu",
                    style: TextStyle(
                        color: Colors.orange,
                        fontWeight: FontWeight.w500,
                        fontSize: 26),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 50, left: 200),
                  child: Icon(
                    Icons.more_vert_outlined,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
              ],
            ),

            SizedBox(
              height: 566,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemCount: data.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(16),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (_) {
                          return FakeData(data: data[index],);
                        }));
                      },
                      child: Container(
                        height: 60,
                        width: 220,
                        decoration: const BoxDecoration(
                            color: Colors.orange,
                            borderRadius:
                                BorderRadius.all(Radius.circular(16))),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Column(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 10, right: 77),
                                  child: Text(
                                    data[index].title,
                                    style: const TextStyle(color: Colors.white),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(top: 5, left: 40),
                                  child: Text(
                                    "Include Topping+ 2k for jahe",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 10),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 2, left: 45),
                                  child: Text(
                                    numberK[index],
                                    style: const TextStyle(
                                        color: Colors.white, fontSize: 12),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(top: 5, left: 1),
                                  child: Icon(
                                    Icons.chevron_right_outlined,
                                    color: Colors.white,
                                    size: 44,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),

            //
            // Padding(
            //   padding: const EdgeInsets.only(top: 50, left: 30),
            //   child: Container(
            //     height: 60,
            //     width: 300,
            //     decoration: BoxDecoration(
            //         color: Colors.orange,
            //         borderRadius: BorderRadius.all(Radius.circular(16))
            //
            //     ),
            //   ),
            // ),
            // Padding(
            //   padding: const EdgeInsets.only(top: 50, left: 30),
            //   child: Container(
            //     height: 60,
            //     width: 300,
            //     decoration: BoxDecoration(
            //         color: Colors.orange,
            //         borderRadius: BorderRadius.all(Radius.circular(16))
            //
            //     ),            ),
            // ),
            // Padding(
            //   padding: const EdgeInsets.only(top: 50, left: 30),
            //   child: Container(
            //     height: 60,
            //     width: 300,
            //     decoration: BoxDecoration(
            //         color: Colors.orange,
            //         borderRadius: BorderRadius.all(Radius.circular(16))
            //
            //     ),            ),
            // ),
          ],
        ),
      ),
    );
  }
}
