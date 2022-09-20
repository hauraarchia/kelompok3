import 'package:flutter/material.dart';
import 'package:kantin/landing.dart';
import 'package:kantin/login.dart';
import 'package:kantin/regist.dart';
import './launcher.dart';
import './login.dart';
import './regist.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Launcher',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LauncherPage(),
    );
  }
}
