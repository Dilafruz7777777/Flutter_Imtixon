import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:qwertyui/Amaliyot/Bobal_Drinks/Menu.dart';

class Benefit extends StatefulWidget {
  const Benefit({Key? key}) : super(key: key);

  @override
  State<Benefit> createState() => _BenefitState();
}

class _BenefitState extends State<Benefit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff233F3A),
      body: Column(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30, left: 20),
                child: Text(
                  "Our Information",
                  style: TextStyle(
                      color: Colors.orange,
                      fontSize: 12,
                      fontWeight: FontWeight.w500),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_) {
                    return Menu();
                  }));
                },
                child: Padding(
                  padding: const EdgeInsets.only(top: 10, right: 280),
                  child: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                    size: 35,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20, left: 20),
                child: Text(
                  "Bobals Benefits",
                  style: TextStyle(
                      color: Colors.orange,
                      fontSize: 28,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(left: 0),
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 10, top: 10),
                  child: Container(
                    height: 136,
                    width: 190,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/benefit1.png")
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10, top: 200),
                  child: Container(
                    height: 136,
                    width: 190,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/benefit2.png")
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 120, top: 100),
                  child: Container(
                    height: 146,
                    width: 190,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/benefit3.png")
                      )
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 20),
            child: Text(
                "@bobal.drink",
              style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w600),
            ),
          ),
        ],
      ),
    );
  }
}
