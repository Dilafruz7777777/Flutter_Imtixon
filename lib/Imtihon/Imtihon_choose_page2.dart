import 'package:flutter/material.dart';
import 'package:qwertyui/Imtihon/Imtihon_Delivery.dart';

class Sign_In2 extends StatefulWidget {
  const Sign_In2({Key? key}) : super(key: key);

  @override
  State<Sign_In2> createState() => _Sign_In2State();
}

TextEditingController name = TextEditingController();

TextEditingController email = TextEditingController();
TextEditingController password = TextEditingController();


bool isEmail = false;
bool isPassword = false;
bool isName = false;

class _Sign_In2State extends State<Sign_In2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: true,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(10),
                      child: Icon(
                        Icons.arrow_back_ios_outlined,
                        color: Colors.black,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 0, left: 30),
                      child: Text(
                        "Forgot Password",
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Create Account",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Enter your Name, Email and Password for sign up.",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: name,
                  onChanged: (s) {
                    isEmail = false;
                    setState(() {});
                  },
                  decoration: const InputDecoration(
                      labelText: "FULL NAME",
                      border: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(),
                      enabledBorder: OutlineInputBorder(),
                      errorBorder: OutlineInputBorder()),
                ),
                isName
                    ? const Text(
                  "You must write name",
                  style: TextStyle(color: Colors.red),
                )
                    : const SizedBox.shrink(),


                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: TextFormField(
                    controller: email,
                    onChanged: (s) {
                      isPassword = false;
                      setState(() {});
                    },
                    decoration: const InputDecoration(
                        labelText: "EMAIL ADDRESS",
                        border: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(),
                        enabledBorder: OutlineInputBorder(),
                        errorBorder: OutlineInputBorder()),
                  ),
                ),
                isEmail
                    ? const Text(
                  "You must write email address",
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
                        labelText: "PASSWORD",
                        border: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(),
                        enabledBorder: OutlineInputBorder(),
                        errorBorder: OutlineInputBorder()),
                  ),
                ),
                isPassword
                    ? const Text(
                  "You must write password",
                  style: TextStyle(color: Colors.red),
                )
                    : const SizedBox.shrink(),

                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 80,vertical: 10),
                      child: Text("Forget Password?"),
                    ),
                    InkWell(
                        onTap: () {
                          if(email.text.isNotEmpty && password.text.isNotEmpty && name.text.isNotEmpty){
                            Navigator.push(context, MaterialPageRoute(builder: (_){
                              return Delivery();
                            }));
                          }else{
                            isName = true;
                            isEmail = true;
                            isPassword = true;
                            setState(() {});
                          }

                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 60,
                          width: 300,
                          child: Center(child: Text("SIGN IN", style: TextStyle(color: Colors.white),)),
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.all(Radius.circular(8)),

                          ),
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top: 10, right: 30),
                      child: Text("Don’t have account?", style: TextStyle(fontSize: 12),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10, right: 30),
                      child: Text("Create new account.", style: TextStyle(color: Colors.green),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10, left: 10),
                      child: Text("Or"),
                    ),


                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Container(
                        height: 50,
                        width: 300,
                        child: Center(child: Text("CONNECT WITH FACEBOOK", style: TextStyle(color: Colors.white),)),
                        decoration: BoxDecoration(
                          color: Color(0xff395998),
                          borderRadius: BorderRadius.all(Radius.circular(8)),

                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 50,
                        width: 300,

                        child: Column(
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 2, left: 2),
                                  child: Container(
                                    width: 36,
                                    height: 26,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                "assets/images/google.png"
                                            )
                                        ),
                                        borderRadius: BorderRadius.all(Radius.circular(4))
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Center(child: Center(child: Text("CONNECT WITH GOOGLE", style: TextStyle(color: Colors.white),))),
                          ],
                        ),
                        decoration: BoxDecoration(
                          color: Color(0xff4285F4),
                          borderRadius: BorderRadius.all(Radius.circular(8)),

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
