import 'dart:math';

class Logic {
  static double CalculateBMI(int height, int weight) {
    double bmi = weight / pow(height / 100, 2);
    return bmi;
  }
}
