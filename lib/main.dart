import 'package:bmi_calculator/controller/bmi_calculator.dart';
import 'package:bmi_calculator/featurers/bmi_calculator/presentation/bmi_calculator_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => BmiCal(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'BMI Calculator',
        theme: ThemeData(primaryColor: Colors.blue),
        home: BMIScreen(),
      ),
    );
  }
}
