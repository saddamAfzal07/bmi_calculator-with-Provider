import 'package:bmi_calculator/controller/bmi_calculator.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

class GenderSelect extends StatefulWidget {
  const GenderSelect({Key? key}) : super(key: key);

  @override
  State<GenderSelect> createState() => _GenderSelectState();
}

class _GenderSelectState extends State<GenderSelect> {
  @override
  Widget build(BuildContext context) {
    var state = Provider.of<BmiCal>((context), listen: false);

    return Expanded(
      child: Row(
        children: [
          Expanded(
            child: GestureDetector(
                onTap: () {
                  state.clickMale();
                },
                child: Consumer<BmiCal>(
                  builder: (context, value, child) => Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          FontAwesomeIcons.mars,
                          color: Colors.white,
                          size: 100,
                        ),
                        Text(
                          "Male",
                          style: TextStyle(
                              fontSize: 26,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    margin: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color:
                            value.male ? Colors.yellow : Colors.lightBlueAccent,
                        borderRadius: BorderRadius.circular(10)),
                  ),
                )),
          ),
          Expanded(
            child: GestureDetector(
                onTap: () {
                  state.clickFemale();
                },
                child: Consumer<BmiCal>(
                  builder: (context, value, child) => Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          FontAwesomeIcons.venus,
                          color: Colors.white,
                          size: 100,
                        ),
                        Text(
                          "Female",
                          style: TextStyle(
                              fontSize: 26,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    margin: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: value.female
                            ? Colors.yellow
                            : Colors.lightBlueAccent,
                        borderRadius: BorderRadius.circular(10)),
                  ),
                )),
          )
        ],
      ),
    );
  }
}
