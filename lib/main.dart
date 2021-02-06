import 'package:Forest/DersEkleme/DersEkleme.dart';
import 'package:Forest/HomePage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: MainClass(),
      theme: new ThemeData(
        canvasColor:  Color(0XFFC6E7F3),
      )));
}

class MainClass extends StatefulWidget {
  @override
  _MainClassState createState() => _MainClassState();
}


class _MainClassState extends State<MainClass> {
  @override
void initState() {
  super.initState();
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomePage(),
    );
  }
}
