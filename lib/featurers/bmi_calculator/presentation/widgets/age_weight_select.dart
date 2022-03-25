import 'package:bmi_calculator/controller/bmi_calculator.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

class AgeWeightSelect extends StatefulWidget {
  const AgeWeightSelect({Key? key}) : super(key: key);

  @override
  State<AgeWeightSelect> createState() => _AgeWeightSelectState();
}

class _AgeWeightSelectState extends State<AgeWeightSelect> {
  @override
  Widget build(BuildContext context) {
    var state = Provider.of<BmiCal>((context), listen: false);

    return Expanded(
      child: Row(
        children: [
          Expanded(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Weight",
                    style: TextStyle(
                        fontSize: 26,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  Consumer<BmiCal>(
                    builder: (context, value, child) => Text(
                      "${value.weight}",
                      style: const TextStyle(
                          fontSize: 40,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          state.incrementWeight();
                        },
                        child: const CircleAvatar(
                          radius: 25,
                          backgroundColor: Colors.white,
                          child: Icon(
                            FontAwesomeIcons.plus,
                            color: Colors.lightBlueAccent,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      GestureDetector(
                        onTap: () {
                          state.decrementWeight();
                        },
                        child: const CircleAvatar(
                          radius: 25,
                          backgroundColor: Colors.white,
                          child: Icon(
                            FontAwesomeIcons.minus,
                            color: Colors.lightBlueAccent,
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
              margin: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                  color: Colors.lightBlueAccent,
                  borderRadius: BorderRadius.circular(10)),
            ),
          ),
          Expanded(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Age",
                    style: TextStyle(
                        fontSize: 26,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  Consumer<BmiCal>(
                    builder: (context, value, child) => Text(
                      "${value.age}",
                      style: const TextStyle(
                          fontSize: 40,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          state.incrementAge();
                        },
                        child: const CircleAvatar(
                          radius: 25,
                          backgroundColor: Colors.white,
                          child: Icon(
                            FontAwesomeIcons.plus,
                            color: Colors.lightBlueAccent,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      GestureDetector(
                        onTap: () {
                          state.decrementAge();
                        },
                        child: const CircleAvatar(
                          radius: 25,
                          backgroundColor: Colors.white,
                          child: Icon(
                            FontAwesomeIcons.minus,
                            color: Colors.lightBlueAccent,
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
              margin: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                  color: Colors.lightBlueAccent,
                  borderRadius: BorderRadius.circular(10)),
            ),
          )
        ],
      ),
    );
  }
}
