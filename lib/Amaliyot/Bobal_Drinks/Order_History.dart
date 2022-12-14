import 'package:flutter/material.dart';
import 'package:qwertyui/Amaliyot/Bobal_Drinks/Menu.dart';
import 'package:qwertyui/Amaliyot/Bobal_Drinks/Order.dart';

class OrderHistory extends StatefulWidget {
  const OrderHistory({Key? key}) : super(key: key);

  @override
  State<OrderHistory> createState() => _OrderHistoryState();
}

class _OrderHistoryState extends State<OrderHistory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff233F3A),
      body: Column(
        children: [

          Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (_) {
                      return Menu();
                    }));
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(top: 50, left: 20),
                    child: Icon(Icons.arrow_back_ios, color: Colors.white, size: 27),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 50, left: 80),
                    child:Text("Order History", style: TextStyle(color: Colors.white, fontSize: 17, fontWeight: FontWeight.w500),)

                ),

                Padding(
                  padding: const EdgeInsets.only(top: 50, left: 60),
                  child: Icon(Icons.more_vert_outlined, color: Colors.white, size: 29),
                ),

              ]
          ),
          Center(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: const   Color(0xff233F3A) // background
                // onPrimary:  Color(0xff233F3A),
              ),
                onPressed: () {
                  showModalBottomSheet(
                      backgroundColor: Colors.transparent,
                      context: context,
                      builder: (context) {
                        return Order();
                      });
                },

                child:  Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20, ),
                  child: Container(
                    height: MediaQuery.of(context).size.height/2,
                    width: 400,

                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/bobal 2.png")
                      )
                    ),
                  ),
                  ),
                ),),
          ),





        ],
      ),
    );
  }
}
