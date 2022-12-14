import 'package:flutter/material.dart';
import 'package:qwertyui/Amaliyot/Bobal_Drinks/Menu.dart';
class End extends StatelessWidget {
  const End({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff233F3A),
      body: Column(
        children: [
          Row(
            children: [
            InkWell(
              onTap: (){
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


            ],

          ),

          Padding(
            padding: const EdgeInsets.only(top: 200),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(),
                  child: IconButton(
                    onPressed: null,
                    icon: Icon(
                      Icons.facebook_outlined,
                      color: Colors.black,
                      size: 90,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: IconButton(
                    onPressed: null,
                    icon: Icon(
                      Icons.phone_bluetooth_speaker_rounded,
                      color: Colors.black,
                      size: 70,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 40),
                  child: IconButton(
                    onPressed: null,
                    icon: Icon(
                      Icons.email,
                      color: Colors.black,
                      size: 90,
                    ),
                  ),
                ),

              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 80),
            child: Container(
              height: 5,
              width: 300,
              color: Colors.white10,
            ),
          ),


          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Text("@bobal.drink", style: TextStyle(color: Color(0xffF47500), fontSize: 30, fontWeight: FontWeight.w600),),
          )
        ],
      ),
    );
  }
}
