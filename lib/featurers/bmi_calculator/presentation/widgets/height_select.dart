import 'package:bmi_calculator/controller/bmi_calculator.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HeightSelect extends StatefulWidget {
  const HeightSelect({Key? key}) : super(key: key);

  @override
  State<HeightSelect> createState() => _HeightSelectState();
}

class _HeightSelectState extends State<HeightSelect> {
  @override
  Widget build(BuildContext context) {
    var state = Provider.of<BmiCal>((context), listen: false);
    return Expanded(
      child: Row(
        children: [
          Expanded(
            child: Container(
              margin: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                  color: Colors.lightBlueAccent,
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text(
                    "Height",
                    style: TextStyle(
                        fontSize: 26,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  Row(
                    textBaseline: TextBaseline.alphabetic,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    children: [
                      Consumer<BmiCal>(
                        builder: (context, value, child) => Text(
                          value.slideralue.toString(),
                          style: const TextStyle(
                              fontSize: 55,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      const Text(
                        "Cm",
                        style: TextStyle(
                            textBaseline: TextBaseline.alphabetic,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Slider(
                      value: state.slideralue.toDouble(),
                      min: 0,
                      max: 260,
                      onChanged: (value) {
                        setState(() {
                          state.slideralue = value.toInt();
                        });
                      })
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
