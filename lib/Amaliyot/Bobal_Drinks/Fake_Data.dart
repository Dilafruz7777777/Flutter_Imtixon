import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:qwertyui/Amaliyot/Bobal_Drinks/Bobal_Model.dart';
import 'package:qwertyui/Amaliyot/Bobal_Drinks/Menu2.dart';

class FakeData extends StatefulWidget {
  final Bobal data;
  const FakeData({Key? key, required this.data}) : super(key: key);

  @override
  State<FakeData> createState() => _FakeDataState();
}

class _FakeDataState extends State<FakeData> {
  bool add = false;
  bool remove = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage(widget.data.backgraund),
          fit: BoxFit.cover,
        )),
        child: Column(
          children: [
            Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (_) {
                      return const Menu2();
                    }));
                  },
                  child: const Padding(
                    padding: EdgeInsets.only(top: 50, left: 20),
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 50, left: 100),
                  child: Text(
                    widget.data.title,
                    style: TextStyle( fontSize: 25,
                      foreground: Paint()
                        ..style = PaintingStyle.stroke
                        ..strokeWidth = 1
                        ..color = Colors.brown,
                    ),
                  ),
                ),




                const Padding(
                  padding: EdgeInsets.only(top: 50, left: 90),
                  child: Icon(
                    Icons.more_vert_outlined,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(top: 240, left: 30),
              child: SizedBox(
                  height: 250,
                  width: 350,
                  child: Text(
                    "a sweet milk-coffee with topping ginger/sinom/curcuma boba",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  )),
            ),
            Row(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 30, left: 30),
                      child: Container(
                        height: 40,
                        width: 100,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(32),
                          ),
                        ),
                        child: Row(
                          children: [
                            InkWell(
                              onTap: (){
                              },
                              child: const Padding(
                                padding: EdgeInsets.only(top: 1, left: 10),
                                child: Icon(
                                  Icons.remove,
                                  color: Colors.black,
                                  size: 20,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 1, left: 15),
                              child: Text(
                                "3",
                                style: TextStyle(
                                    color: Colors.orange.shade300,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 18),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 1, left: 12),
                              child: Icon(
                                Icons.add,
                                color: Colors.black,
                                size: 20,
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding:  EdgeInsets.only(left: 60, top: 20),
                      child: Column(
                        children: [
                          Container(
                            height: 70,
                            width: 135,
                            decoration:  BoxDecoration(
                                color: Colors.orange,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(28))),
                            child: Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 5, top: 10),
                                  child: Text(
                                    "Add",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 5, top: 10),
                                  child: Text(
                                    "${widget.data.numberK} K",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),

                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
