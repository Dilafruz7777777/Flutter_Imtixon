import 'package:flutter/material.dart';
import 'package:qwertyui/Imtihon/Imtihon_choose_page.dart';
import 'package:qwertyui/Uy_ishi_2_12_2022/Login_Page.dart';

import 'Imtihon/Imtihon_Main_PAge.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Sign_In(),

    );
  }
}