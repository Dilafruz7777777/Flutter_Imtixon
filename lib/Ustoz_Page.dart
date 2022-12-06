import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Ustoz_Model.dart';
import 'Ustoz_Choose_page.dart';

class Uy_30_11_2022 extends StatefulWidget {
  const Uy_30_11_2022({Key? key}) : super(key: key);

  @override
  State<Uy_30_11_2022> createState() => _Uy_30_11_2022State();
}

class _Uy_30_11_2022State extends State<Uy_30_11_2022> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("30_11_2022"),),
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
                          return ChoosePage();
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
