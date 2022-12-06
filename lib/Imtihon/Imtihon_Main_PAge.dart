import 'package:flutter/material.dart';

class Imtihon_PAge extends StatefulWidget {
  const Imtihon_PAge({Key? key}) : super(key: key);

  @override
  State<Imtihon_PAge> createState() => _Imtihon_PAgeState();
}

class _Imtihon_PAgeState extends State<Imtihon_PAge> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Color(0xffE5E5E5),
      body: SingleChildScrollView(
        child: InkWell(
          onLongPress: () {

            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 170, left: 30, right: 45, bottom: 100),
                      child: Container(
                          height: 280,
                          width: 280,
                          child: Image(
                            image: AssetImage("assets/images/imtihon_1.png"),
                          )),
                    ),
                  ],
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
