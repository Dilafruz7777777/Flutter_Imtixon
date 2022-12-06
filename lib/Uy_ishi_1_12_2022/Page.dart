import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:qwertyui/Uy_ishi_1_12_2022/Choose_Page.dart';


class Uy_1_12_2022 extends StatefulWidget {
  const Uy_1_12_2022({Key? key}) : super(key: key);

  @override
  State<Uy_1_12_2022> createState() => _Uy_1_12_2022State();
}

class _Uy_1_12_2022State extends State<Uy_1_12_2022> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("1_12_2022"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: ElevatedButton(
                  onPressed: () {
                    showModalBottomSheet(
                        backgroundColor: Colors.transparent,
                        context: context,
                        builder: (context) {
                          return ChoosePage1_12_2022();
                        });
                  },
                  child: const Text("First button")),
            )
          ],
        ),
      ),
    );
  }
}
