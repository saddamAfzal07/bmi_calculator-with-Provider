import 'dart:math';

import 'package:flutter/material.dart';

class BmiCal extends ChangeNotifier {
  int weight = 50;
  int age = 25;
  var slideralue = 33;
  double bmivalue = 0;

  bool male = false;
  bool female = false;
  String gender = "Not Selected";

  incrementWeight() {
    weight++;
    notifyListeners();
  }

  decrementWeight() {
    weight--;
    notifyListeners();
  }

  incrementAge() {
    age++;
    notifyListeners();
  }

  decrementAge() {
    age--;
    notifyListeners();
  }

  clickMale() {
    male = true;
    female = false;
    gender = "Male";
    notifyListeners();
  }

  clickFemale() {
    female = true;
    male = false;
    gender = "Female";
    notifyListeners();
  }
}
