import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
class Data extends StatefulWidget {
  const Data({Key? key}) : super(key: key);

  @override
  State<Data> createState() => _DataState();
}

String seletDate = "";
class _DataState extends State<Data> {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title: Text("Uy_Ishi_7_12_2022" ),
        // babylonica
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [

              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Center(child: Text("Create Public Event", style: GoogleFonts.monteCarlo(fontSize: 25, fontWeight: FontWeight.bold),)),
              ),

              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  height: 60,
                  width: 300,
                  decoration: BoxDecoration(
                    border: Border.all(width: 2, color: Colors.black),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  height: 60,
                  width: 300,
                  decoration: BoxDecoration(
                    border: Border.all(width: 2, color: Colors.black),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  height: 60,
                  width: 300,
                  decoration: BoxDecoration(
                    border: Border.all(width: 2, color: Colors.black),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  height: 60,
                  width: 300,
                  decoration: BoxDecoration(
                    border: Border.all(width: 2, color: Colors.black),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  height: 60,
                  width: 300,
                  decoration: BoxDecoration(
                    border: Border.all(width: 2, color: Colors.black),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(32.0),

                  child: Column(
                    children: [

                      TextFormField(
                        onTap: () {

                          showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime.now().subtract(
                              Duration(days: 365 * 90),
                            ),
                            lastDate: DateTime.now().add(
                              Duration(days: 365 * 10),
                            ),
                          ).then((value) {
                            seletDate = "${value?.month ?? 0} / ${value?.day ?? 0} / ${value?.year ?? 0}";
                            setState(() {});
                          });
                        },
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          focusedBorder: OutlineInputBorder(),
                          enabledBorder: OutlineInputBorder(),
                          errorBorder: OutlineInputBorder(),

                        ),


                      ),
                    ],
                  ),
                ),


            ],
          ),
        ),
      ),
    );
  }
}
