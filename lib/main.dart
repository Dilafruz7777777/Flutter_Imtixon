import 'package:flutter/material.dart';
import 'package:qwertyui/Amaliyot/Bobal_Drinks/Bobal_Coffee.dart';
import 'package:qwertyui/Imtihon/Imtihon_choose_page.dart';
import 'package:qwertyui/Sinf/7_12_2022_Sinf_Ishi.dart';
import 'package:qwertyui/Sinf/Life_cycle_8_12_2022/onboarding.dart';
import 'package:qwertyui/Sinf/Login_2_12_2022/Login_Page.dart';
import 'package:qwertyui/Ustoz_Choose_page.dart';
import 'package:qwertyui/Uy_Ishi/7_12_2022_Uy_ishi.dart';
import 'package:qwertyui/Uy_Ishi/uy2.dart';

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
      home: HomePage(),


    );
  }
}