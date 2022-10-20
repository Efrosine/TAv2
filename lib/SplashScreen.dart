import 'dart:async';

import 'package:flutter/material.dart';
import 'package:tugas_akhir_v2/Tab_Terbaru.dart';
import 'package:tugas_akhir_v2/Login.dart';

class SplahScreen extends StatefulWidget {
  const SplahScreen({super.key});

  @override
  State<StatefulWidget> createState() => _homeState();
}

class _homeState extends State<SplahScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
      Duration(seconds: 3),
      () => Navigator.push(
          context, MaterialPageRoute(builder: (context) => Login())),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Image.asset('assets/images/uin.png'),
    );
  }
}
