import 'package:bmi_calculator/featurers/bmi_calculator/presentation/formula.dart';
import 'package:flutter/material.dart';

class BmiResult extends StatefulWidget {
  int weight;
  int height;
  int age;
  String gender;

  BmiResult(
      {Key? key,
      required this.age,
      required this.height,
      required this.weight,
      required this.gender})
      : super(key: key);

  @override
  State<BmiResult> createState() => _BmiResultState();
}

class _BmiResultState extends State<BmiResult> {
  double bmivalue = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    bmivalue = Logic.CalculateBMI(widget.height, widget.weight);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("BMI Result"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Gender : ${widget.gender}",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const Text(
              "BMI Result",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
                width: 250,
                height: 250,
                child: Image.asset(
                  "assets/images/bmi.jpg",
                  fit: BoxFit.contain,
                )),
            Text(
              "${bmivalue.toStringAsFixed(1)}",
              style: const TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                color: Colors.lightBlueAccent,
              ),
            )
          ],
        ),
      ),
    );
  }
}
