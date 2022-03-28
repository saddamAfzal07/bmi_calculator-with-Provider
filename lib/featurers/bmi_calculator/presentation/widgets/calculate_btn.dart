import 'package:bmi_calculator/controller/bmi_calculator.dart';
import 'package:bmi_calculator/featurers/bmi_calculator/presentation/bmi_result.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CalculateBtn extends StatefulWidget {
  const CalculateBtn({Key? key}) : super(key: key);

  @override
  State<CalculateBtn> createState() => _CalculateBtnState();
}

class _CalculateBtnState extends State<CalculateBtn> {
  String gender = "Not mention";
  @override
  Widget build(BuildContext context) {
    var state = Provider.of<BmiCal>((context), listen: false);
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => BmiResult(
                    age: state.age,
                    height: state.slideralue,
                    weight: state.weight,
                    gender: state.gender ? "Male" : "Female")));
      },
      child: Container(
        alignment: Alignment.center,
        height: 60,
        width: double.infinity,
        color: Colors.blue,
        child: const Text(
          "Calculator",
          style: TextStyle(
            color: Colors.white,
            fontSize: 26,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
