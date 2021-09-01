import 'package:flutter/material.dart';
// import 'package:anas_app2/bmi_Screen.dart';
import 'bmi_Screen.dart';


void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BmiScreen(),

    );
  } //Function Build
}
