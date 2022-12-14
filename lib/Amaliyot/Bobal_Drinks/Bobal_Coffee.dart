import 'package:flutter/material.dart';
import 'package:qwertyui/Amaliyot/Bobal_Drinks/Menu.dart';
import 'package:qwertyui/Imtihon/Imtihon_choose_page2.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

TextEditingController username = TextEditingController();

TextEditingController password = TextEditingController();

bool isUsername = false;
bool isPassword = false;

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xff233F3A),
        resizeToAvoidBottomInset: true,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(64.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                    height: 400,
                    child: Padding(
                      padding: EdgeInsets.only(top: 80),
                      child: Center(
                          child: Image(
                              image: AssetImage("assets/images/bobal_1.png"))),
                    )),
                SizedBox(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 70),
                    child: TextFormField(
                      controller: username,
                      onChanged: (s) {
                        isEmail = false;
                        setState(() {});
                      },
                      decoration: const InputDecoration(
                          labelText: "Username",
                          labelStyle: TextStyle(color: Colors.white),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(32),
                              ),
                              borderSide:
                                  BorderSide(color: Colors.black, width: 2)),
                          // fillColor: Colors.orange,
                          // filled: true,
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(32),
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(32),
                              ),
                              borderSide: BorderSide(color: Colors.orange),
                              ),
                          errorBorder: OutlineInputBorder()),
                    ),
                  ),
                ),
                isUsername
                    ? const Text(
                        "You must write Username",
                        style: TextStyle(color: Colors.red),
                      )
                    : const SizedBox.shrink(),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: TextFormField(
                    controller: password,
                    onChanged: (s) {
                      isPassword = false;
                      setState(() {});
                    },
                    decoration: const InputDecoration(
                        labelText: "Password",
                        labelStyle: TextStyle(color: Colors.white),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(32),
                            ),
                            borderSide:
                                BorderSide(color: Colors.black, width: 2)),
                        // fillColor: Colors.orange,
                        // filled: true,
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(32),
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(32),
                            ),
                            borderSide: BorderSide(color: Colors.orange)),
                        errorBorder: OutlineInputBorder()),
                  ),
                ),
                isPassword
                    ? const Text(
                        "You must write Password",
                        style: TextStyle(color: Colors.red),
                      )
                    : Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () {
                              if (username.text.isNotEmpty &&
                                  password.text.isNotEmpty) {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (_) {
                                  return const Menu();
                                }));
                              } else {
                                isEmail = true;
                                isPassword = true;
                                setState(() {});
                              }
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Center(
                                child: Container(
                                  height: 50,
                                  width: 150,
                                  child: const Center(
                                      child: Text(
                                    "Login",
                                    style: TextStyle(color: Colors.white),
                                  )),
                                  decoration: const BoxDecoration(
                                    color: Colors.orange,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8)),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
              ],
            ),
          ),
        ));
  }
}
