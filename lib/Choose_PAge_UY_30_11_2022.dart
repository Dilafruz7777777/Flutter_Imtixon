import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChoosePage extends StatelessWidget {
  const ChoosePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.white,
          child: const Padding(
            padding: EdgeInsets.only(left: 0, top: 10),
            child: Text(
              "Choose communal type",
              style: TextStyle(
                color: Colors.black,
                decoration: TextDecoration.none,
                fontSize: 15,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),

        Container(
          child: const Padding(
            padding: EdgeInsets.only(right: 200,top: 18),
            child: Text(
              "SMART CARDS",
              style: TextStyle(
                  color: Colors.grey, fontSize: 12),
            ),
          ),
        ),
        Container(
          color: Color(0xfff8f8fa),
          child: Row(
            children: const [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(
                  Icons.bolt,
                  color: Colors.yellowAccent,
                  size: 35,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 40),
                child: Text(
                  "Light",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 160),
                child: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.black,
                  size: 25,
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(bottom: 18),
          color: Colors.white30,
          child: Row(
            children: const [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(
                  Icons.gas_meter,
                  color: Colors.orangeAccent,
                  size: 35,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 40),
                child: Text(
                  "Gas",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 160),
                child: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.black,
                  size: 25,
                ),
              )
            ],
          ),
        ),
        Container(
          color: Colors.white24,
          child: Row(
            children: const [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(
                  Icons.water_drop_rounded,
                  color: Colors.lightBlueAccent,
                  size: 35,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 40),
                child: Text(
                  "Water",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 145),
                child: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.black,
                  size: 25,
                ),
              ),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(right: 240,top: 20),
          child: Text(
            "OTHERS",
            style: TextStyle(
                color: Colors.grey, fontSize: 12),
          ),
        ),
        Container(
          color: Colors.white30,
          child: Row(
            children: const [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(Icons.account_balance_wallet, color: Colors.black, size: 20,),
              ),
              Padding(
                padding: EdgeInsets.only(right: 40),
                child: Text("Increase balance", style: TextStyle(color: Colors.black, fontSize: 15),),
              ),
              Padding(
                padding: EdgeInsets.only(left: 30),
                child: Icon(Icons.arrow_forward_ios, color: Colors.black, size: 25,),
              ),

            ],
          ),

        )
      ],
    );
  }
}

