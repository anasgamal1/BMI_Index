import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'bmi_card.dart';
import 'gender_card.dart';

enum Gender {
  male,
  female,
}

class BmiScreen extends StatefulWidget {
  @override
  _BmiScreenState createState() => _BmiScreenState();
}

class _BmiScreenState extends State<BmiScreen> {
  Gender selectGender = Gender.female;
  double hight = 182;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Expanded(
                child: Container(
                  child: Row(
                    children: [
                      BmiCard(
                        cardChild: GenderCard(
                          name: 'Male',
                          genderIcon: Icons.male,
                          ontap: () {
                            setState(() {
                              selectGender = Gender.male;
                            });
                          },
                          textColor: selectGender == Gender.male
                              ? Colors.white
                              : Colors.blueAccent,
                          iconColor: selectGender == Gender.male
                              ? Colors.white
                              : Colors.blueAccent,
                        ),
                      ),
                      BmiCard(
                        cardChild: GenderCard(
                          name: 'Female',
                          genderIcon: Icons.female,
                          ontap: () {
                            setState(() {
                              selectGender = Gender.female;
                            });
                          },
                          textColor: selectGender == Gender.female
                              ? Colors.white
                              : Colors.blueAccent,
                          iconColor: selectGender == Gender.female
                              ? Colors.white
                              : Colors.blueAccent,
                        ),
                      ),
                    ], //children
                  ),
                ),
              ),
              BmiCard(
                cardChild: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          "$hight",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 60,
                              fontWeight: FontWeight.w900),
                        ),
                        Text(
                          'cm',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 50,
                              fontWeight: FontWeight.w900),
                        ),
                        SliderTheme(
                            data: SliderTheme.of(context).copyWith(
                              inactiveTrackColor: Colors.blueAccent,
                              activeTrackColor: Colors.indigo,
                              thumbColor: Colors.deepPurple,
                              overlayColor: Colors.indigoAccent,
                              thumbShape:
                                  RoundSliderThumbShape(enabledThumbRadius: 15),
                              overlayShape:
                                  RoundSliderOverlayShape(overlayRadius: 30),
                            ),
                            child: Slider(
                              value: hight.toDouble(),
                              min: 120,
                              max: 220,
                              onChanged: (double value) {
                                setState(() {
                                  hight = value.round() as double;
                                });
                              },
                            )),
                      ],
                    )
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  child: Row(
                    children: [
                      BmiCard(
                        cardChild: Column(
                          children: [],
                        ),
                      ),
                      BmiCard(
                        cardChild: Column(
                          children: [],
                        ),
                      ),
                    ], //children
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
