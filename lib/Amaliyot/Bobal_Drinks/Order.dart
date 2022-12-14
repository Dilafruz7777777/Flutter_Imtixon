import 'package:flutter/material.dart';
import 'package:qwertyui/Amaliyot/Bobal_Drinks/Bobal_Model.dart';

import 'Order_Model.dart';

class Order extends StatefulWidget {
  Order({Key? key}) : super(key: key);

  List<Order_Model> data = [
    Order_Model(date: "28 March 2022", title: "Coffe", title2: "Quantity: 1"),
    Order_Model(
        date: "9 September 2022", title: "Juice", title2: "Quantity: 1"),
    Order_Model(date: "", title: "Tea", title2: "Quantity: 2"),
    Order_Model(date: "2 May 2022", title: "Milk Tea", title2: "Quantity: 1"),
    Order_Model(date: "4 May 2022", title: "Latte", title2: "Quantity: 1"),
    Order_Model(date: "5 May 2022", title: "Cappuccino", title2: "Quantity: 1"),
    Order_Model(
        date: "7 May 2022", title: "Milk Thistle", title2: "Quantity: 1"),
    Order_Model(date: "12 May 2022", title: "Cocao", title2: "Quantity: 1"),
    Order_Model(date: "22 May 2022", title: "Lemonade", title2: "Quantity: 1"),
  ];

  List title2 = [
    "Quantity: 1",
    "Quantity: 1",
    "Quantity: 2",
    "Quantity: 1",
    "Quantity: 1",
    "Quantity: 1",
    "Quantity: 1",
    "Quantity: 1",
    "Quantity: 1",
  ];

  List title = [
    "Coffe",
    "Juice",
    "Tea",
    "Milk Tea",
    "Latte",
    "Cappuccino",
    "Milk Thistle",
    "Cocao",
    "Lemonade",
  ];

  List date = [
    "28 March 2022",
    "",
    "21 April  2022",
    "2 May 2022",
    "4 May 2022",
    "5 May 2022",
    "7 May 2022",
    "12 May 2022",
    "22 May 2022",
  ];

  @override
  State<Order> createState() => _OrderState();
}

class _OrderState extends State<Order> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 2 + 48,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(48),
          topLeft: Radius.circular(48),
        ),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
           Expanded(
             child: ListView.builder(
      itemCount: widget.data.length,
               itemBuilder: (context, index){
        return  Column(
                        children: [
                           Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  widget.data[index].date,
                                  style: TextStyle(
                                      fontSize: 15, fontWeight: FontWeight.w600),
                                ),

                              ],
                            ),
                          Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 1, left: 20),
                              child: Container(
                                height: 3,
                                width: 10,
                                color: Colors.black,
                              ),
                            ),
                            Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(top: 1, left: 1),
                                  child: Text(
                                    widget.data[index].title,
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 3, left: 30),
                                  child: Text(
                                    widget.data[index].title2,
                                    style: TextStyle(
                                        fontSize: 11, color: Colors.grey),
                                  ),
                                ),
                              ],
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 150),
                              child: Text(
                                "20 k",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(height: 30),
                      ],

                            );
                  },
                  ),
           ),
      ]
          ),
    );

     }
  }
