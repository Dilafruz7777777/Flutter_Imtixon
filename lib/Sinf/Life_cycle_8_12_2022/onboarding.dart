import 'package:flutter/material.dart';
import 'package:qwertyui/Sinf/Life_cycle_8_12_2022/Login_Page.dart';
class onBoarding extends StatefulWidget {
  const onBoarding({Key? key}) : super(key: key);

  @override
  State<onBoarding> createState() => _onBoardingState();
}

class _onBoardingState extends State<onBoarding> {
  String text = "";
  bool isLoading = true;

  @override
  void initState(){
    super.initState();
    isLoading = true;
    Future.delayed(Duration(seconds: 5), () {
     Navigator.push(context, MaterialPageRoute(builder: (_) {
       return LoginPage();
     } ));
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("OnBoarding", style: TextStyle(fontSize: 20),)),
      ),
      body: Center(
        child: isLoading ? Container(
          height: 24,
          width: 100,
          decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.5),
            borderRadius: BorderRadius.all(Radius.circular(8),),
          ),

        ) : Text("Salom Bolalar"),
      ),
    );
  }
}
