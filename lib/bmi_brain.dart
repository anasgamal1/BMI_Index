import 'dart:math';

import 'package:flutter/material.dart';

class Calculation {
  final int height;
  final int weight;
  double bmi;

  Calculation({this.weight, this.height});
  String bmiCal() {
    bmi = weight / pow(height / 100, 2);
    return bmi.toStringAsFixed(1);
  }

  String bmiResult() {
    if (bmi >= 25)
      return 'Overweight';
    else if (bmi >= 18.5)
      return 'Normal';
    else
      return 'Underweight';
  }

  String bmiMsg() {
    if (bmi >= 25)
      return 'You have a higher than normal body weight .TRy to exercise more';
    else if (bmi >= 18.5)
      return 'You have a normal body weight.Good job!';
    else
      return 'You have a lower than normal body weight .You can eat more';
  }
}
