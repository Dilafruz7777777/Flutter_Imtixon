import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:core';
import 'package:qwertyui/Sinf/Login_2_12_2022/Profile_Page.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController firstName = TextEditingController();

  TextEditingController lastName = TextEditingController();

  List<String> listOfImage = [
    "https://static.vecteezy.com/system/resources/previews/004/773/704/non_2x/a-girl-s-face-with-a-beautiful-smile-a-female-avatar-for-a-website-and-social-network-vector.jpg",
    "https://www.pngall.com/wp-content/uploads/12/Avatar-Profile-Vector-PNG-File.png",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRRB-r-33_9ZqU1sAITY2wlJNXYt-qkzsLszA&usqp=CAU",
    "https://assets.materialup.com/uploads/b78ca002-cd6c-4f84-befb-c09dd9261025/preview.png"
  ];

  int selectIndexImage = -1;
  bool isNameEmpty = false;
  bool isLastNameEmpty = false;
  String selecTime = "";
  String seletDate = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: true,
        appBar: AppBar(
          title: Center(
            child: Text(
              "Login",
              style: GoogleFonts.monteCarlo(
                  fontSize: 50, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              ElevatedButton(
                onPressed: () {
                  showTimePicker(
                    context: context,
                    initialTime: TimeOfDay.now(),
                  ).then((value) {
                    selecTime =
                        "${value?.hour ?? TimeOfDay.now().hour} : ${value?.minute ?? TimeOfDay.now().minute}";
                    setState(() {});
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Select day : $selecTime"),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    TimeOfDay.now().toString(),
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    DateTime.now().toString(),
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  // showDatePicker(context: context, initialDate: DateTime.now(), firstDate: DateTime(1920), lastDate: DateTime(2025));
                  showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime.now().subtract(
                      Duration(days: 365 * 10),
                    ),
                    lastDate: DateTime.now().add(
                      Duration(days: 365 * 10),
                    ),
                  ).then((value) {
                    seletDate = "${value?.year ?? 0} - ${value?.month ?? 0} - ${value?.day ?? 0}";
                    setState(() {});
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Select day_new : $selecTime"),
                ),
              ),

              ElevatedButton(onPressed: () {
                showModalBottomSheet(context: context, builder: (context){
                  return CupertinoTimerPicker(onTimerDurationChanged: (Duration value) {
                    print(value);
                  });
                });
              }, child: Text("Data ${seletDate}")),


              ElevatedButton(onPressed: () {
                showModalBottomSheet(context: context, builder: (context){
                  return CupertinoDatePicker(onDateTimeChanged: (value) {
                    print(value);
                  });
                });
              }, child: Text("Data_2 ${seletDate}")),

              ElevatedButton(onPressed: () {
                showModalBottomSheet(context: context, builder: (context){
                  return CupertinoDatePicker(mode: CupertinoDatePickerMode.dateAndTime,
                    use24hFormat: true,
                    onDateTimeChanged: (value) {
                      print(value);
                    },
                  );
                });
              }, child: Text("Data_3 ${seletDate}")),
            ],
          ),
        ));
  }
}

// import 'package:flutter/material.dart';
//
// import 'Profile_Page.dart';
//
// class LoginPage extends StatefulWidget {
//   LoginPage({Key? key}) : super(key: key);
//
//   @override
//   State<LoginPage> createState() => _LoginPageState();
// }
//
// class _LoginPageState extends State<LoginPage> {
//   TextEditingController firstName = TextEditingController();
//
//   TextEditingController lastName = TextEditingController();
//
//   List<String> listofImage = [
//     "https://img.freepik.com/free-vector/businessman-character-avatar-isolated_24877-60111.jpg?w=2000",
//     "https://img.freepik.com/free-vector/businessman-character-avatar-isolated_24877-60111.jpg?w=2000",
//     "https://img.freepik.com/free-vector/businessman-character-avatar-isolated_24877-60111.jpg?w=2000",
//     "https://img.freepik.com/free-vector/businessman-character-avatar-isolated_24877-60111.jpg?w=2000",
//   ];
//
//   int selectIndexImage = -1;
//   bool isNameEmpty = false;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       resizeToAvoidBottomInset: true,
//       appBar: AppBar(
//         title: const Text("Login"),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(24),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             SizedBox(
//         height: 100,
//               child: ListView.builder(
//                 scrollDirection: Axis.horizontal,
//                   itemCount: listofImage.length,
//                   itemBuilder: (context, index) {
//                 return Padding(
//                   padding: const EdgeInsets.all(24),
//                   child: InkWell(
//                     child: Container(
//                      height: 100,
//                      width: 100,
//                       decoration: BoxDecoration(
//                         borderRadius: const BorderRadius.all(Radius.circular(16),
//                         ),
//                         border: Border.all(color: selectIndexImage == index ? Colors.blue : Colors.grey, width: 4),
//                         image: DecorationImage(
//                           image: NetworkImage(listofImage[index]),
//                           fit: BoxFit.cover,
//                         ),
//                       ),
//
//
//                     ),
//                     onTap: () {
//                       if (selectIndexImage == index) {
//                         selectIndexImage = -1;
//                       } else {
//                         selectIndexImage = index;
//                       }
//                       setState(() {});
//                     },
//
//
//                   ),
//                 );
//               }),
//             ),
//             const SizedBox(
//               height: 24,
//             ),
//             TextFormField(
//               controller: firstName,
//               decoration: const InputDecoration(
//                 labelText: "First name",
//                 border: OutlineInputBorder(),
//                 focusedBorder: OutlineInputBorder(),
//                 enabledBorder: OutlineInputBorder(),
//                 errorBorder: OutlineInputBorder(),
//               ),
//             ),
//             isNameEmpty ? const Text("You must write name ", style: TextStyle(color: Colors.red),) : const SizedBox.shrink(),
//
//             Padding(
//               padding: const EdgeInsets.symmetric(vertical: 16),
//               child: TextFormField(
//                 controller: lastName,
//                 decoration: const InputDecoration(
//                   labelText: "First name",
//                   border: OutlineInputBorder(),
//                   focusedBorder: OutlineInputBorder(),
//                   enabledBorder: OutlineInputBorder(),
//                   errorBorder: OutlineInputBorder(),
//                 ),
//               ),
//             ),
//             ElevatedButton(onPressed: () {
//               if(firstName.text.isNotEmpty){
//                 Navigator.push(context, MaterialPageRoute(builder: (_) {
//                   return ProfilePage(
//                     name: firstName.text,
//                     lastName: lastName.text,
//                     avatar: selectIndexImage == -1 ? "" : listofImage[selectIndexImage],
//                   );
//                 },
//                 ),
//                 );
//               }else{
//                 isNameEmpty = true;
//                 setState(() {});
//               }
//
//
//             }, child: const Text("Login"))
//           ],
//         ),
//       ),
//     );
//   }
// }
