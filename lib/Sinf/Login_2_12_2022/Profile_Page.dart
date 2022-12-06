import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  final String name;
  final String lastName;
  final String avatar;

  const ProfilePage(
      {Key? key,
        required this.name,
        required this.lastName,
        required this.avatar})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            avatar.isEmpty ?  Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.red,
              ),
              child: Center(child:
              Text("${name[0]}${lastName[0]}",
                style: TextStyle(fontSize: 24),)),
            ) :
            Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: NetworkImage(avatar),
                      fit: BoxFit.cover
                  )
              ),
            ),





            Text(
              "Profile name : $name ",
              style: TextStyle(fontSize: 24),
            ),
            const SizedBox(
              height: 24,
            ),
            Text("Profile last name : $lastName ",
                style: TextStyle(fontSize: 24)),
          ],
        ),
      ),
    );
  }
}



// import 'package:flutter/material.dart';
// class ProfilePage extends StatelessWidget {
//   final String name;
//   final String lastName;
//   final String avatar;
//
//   const ProfilePage({Key? key, required this.name, required this.lastName, required this.avatar}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Profile Page"),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             avatar.isNotEmpty ? Container(
//               width: 200,
//               height: 200,
//               decoration: BoxDecoration(
//                 shape: BoxShape.circle,
//                 color: Colors.red,
//               ),
//           child: Center(child: Text("${name[0]}${lastName[0]}",
//               style: TextStyle(fontSize: 24),
//           ))
//             ) : Container(
//               width: 200,
//               height: 200,
//               decoration: BoxDecoration(
//                 shape: BoxShape.circle,
//                 image: DecorationImage(
//                   image: NetworkImage(avatar),
//                   fit: BoxFit.cover,
//                 )
//               ),
//
//
//               ),
//
//
//
//             Text("Profile name: $name ", style: TextStyle(fontSize: 15),),
//             SizedBox(height: 24,),
//             Text("Profile name: $lastName ", style: TextStyle(fontSize: 15),),
//
//           ],
//         ),
//       ),
//
//     );
//   }
// }
