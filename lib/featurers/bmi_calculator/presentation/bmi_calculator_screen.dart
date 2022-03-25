import 'package:bmi_calculator/controller/bmi_calculator.dart';
import 'package:bmi_calculator/featurers/bmi_calculator/presentation/bmi_result.dart';
import 'package:bmi_calculator/featurers/bmi_calculator/presentation/widgets/age_weight_select.dart';
import 'package:bmi_calculator/featurers/bmi_calculator/presentation/widgets/calculate_btn.dart';
import 'package:bmi_calculator/featurers/bmi_calculator/presentation/widgets/gender_select.dart';
import 'package:bmi_calculator/featurers/bmi_calculator/presentation/widgets/height_select.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:provider/provider.dart';

class BMIScreen extends StatefulWidget {
  // const BMIScreen({Key? key}) : super(key: key);

  @override
  State<BMIScreen> createState() => _BMIScreenState();
}

class _BMIScreenState extends State<BMIScreen> {
  @override
  Widget build(BuildContext context) {
    var state = Provider.of<BmiCal>((context), listen: false);
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("BMI Calculator"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: const [
              GenderSelect(),
              HeightSelect(),
              AgeWeightSelect(),
              CalculateBtn(),
            ],
          ),
        ));
  }
}
