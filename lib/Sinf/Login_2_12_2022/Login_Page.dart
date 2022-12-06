import 'package:flutter/material.dart';
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: true,
        appBar: AppBar(
          title: Center(child: const Text("Login")),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 200,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: listOfImage.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: InkWell(
                            child: Container(
                              width: 80,
                              height: 60,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(16),
                                ),
                                border: Border.all(
                                    color: selectIndexImage == index
                                        ? Colors.blue
                                        : Colors.grey,
                                    width: 4),
                                image: DecorationImage(
                                    image: NetworkImage(listOfImage[index]),
                                    fit: BoxFit.cover),
                              ),
                            ),
                            onTap: () {
                              if (selectIndexImage == index) {
                                selectIndexImage = -1;
                              } else {
                                selectIndexImage = index;
                              }
                              setState(() {});
                            },
                          ),
                        );
                      }),
                ),
                SizedBox(
                  height: 24,
                ),
                TextFormField(
                  controller: firstName,
                  onChanged: (s){
                    isNameEmpty = false;
                    setState(() {});
                  },
                  decoration: const InputDecoration(
                      labelText: "First name",
                      border: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(),
                      enabledBorder: OutlineInputBorder(),
                      errorBorder: OutlineInputBorder()),
                ),
                isNameEmpty ? Text("You maust write name",style:
                TextStyle(color: Colors.red),) : SizedBox.shrink(),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: TextFormField(
                    controller: lastName,
                    onChanged: (s){
                      isLastNameEmpty = false;
                      setState(() {});
                    },
                    decoration: const InputDecoration(
                        labelText: "Last name",
                        border: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(),
                        enabledBorder: OutlineInputBorder(),
                        errorBorder: OutlineInputBorder()),
                  ),
                ),
                isLastNameEmpty ? Text("You maust write last",style:
                TextStyle(color: Colors.red),) : SizedBox.shrink(),
                ElevatedButton(
                  onPressed: () {
                    if(firstName.text.isNotEmpty && lastName.text.isNotEmpty){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) {
                            return ProfilePage(
                              name: firstName.text,
                              lastName: lastName.text,
                              avatar: selectIndexImage == -1
                                  ? ""
                                  : listOfImage[selectIndexImage],
                            );
                          },
                        ),
                      );
                    }else{
                      isNameEmpty = true;
                      isLastNameEmpty = true;
                      setState(() {});
                    }
                  },
                  child: const Center(child: Text("Login"),),),
              ],
            ),
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
