import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: const Color(0xff233F3A) ,
      body: Center(

          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 60, ),
                  child: Center(child: Image.asset("assets/images/bobal 1.png")),
                ),
                Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: TextFormField(

                    initialValue: "Username:",
                    style: const TextStyle(
                      fontSize: 10,
                      color: Colors.blue,
                    ),
                    decoration: const InputDecoration(
                      labelText: "Username:",
                      labelStyle: TextStyle(
                        color: Colors.black,
                      ),
                      enabledBorder:  const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(16)),
                          borderSide: BorderSide(color: Colors.redAccent, width: 5)
                      ),
                      focusedBorder:  const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(16)),
                          borderSide: BorderSide(color: Colors.deepPurpleAccent)
                      ),
                    ),

                  ),
                )
              ],
            ),
          ),
      ),

    );
  }
}
