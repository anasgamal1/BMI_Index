import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'bmi_card.dart';
import 'gender_card.dart';
import 'round_button.dart';
import 'calculate_screen.dart';
import 'bmi_brain.dart';

enum Gender {
  male,
  female,
}
const textStyle =
    TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.w900);

const numberStyle =
    TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 60);

class BmiScreen extends StatefulWidget {
  @override
  _BmiScreenState createState() => _BmiScreenState();
}

class _BmiScreenState extends State<BmiScreen> {
  Gender selectGender = Gender.female;
  int height = 182;
  int weight = 80;
  int age = 20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: SafeArea(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
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
                          "$height",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 60,
                              fontWeight: FontWeight.w900),
                        ),
                        Text(
                          'cm',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 35,
                              fontWeight: FontWeight.w900),
                        ),
                      ],
                    ),
                    SliderTheme(
                        data: SliderTheme.of(context).copyWith(
                          inactiveTrackColor: Colors.blueAccent,
                          activeTrackColor: Colors.white,
                          thumbColor: Colors.deepPurple,
                          overlayColor: Colors.indigoAccent,
                          thumbShape:
                              RoundSliderThumbShape(enabledThumbRadius: 15),
                          overlayShape:
                              RoundSliderOverlayShape(overlayRadius: 30),
                        ),
                        child: Slider(
                          value: height.toDouble(),
                          min: 120,
                          max: 220,
                          onChanged: (double value) {
                            setState(() {
                              height = value.round();
                            });
                          },
                        )),
                    Text('Height', style: textStyle),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  child: Row(
                    children: [
                      BmiCard(
                        cardChild: Column(
                          children: [
                            Text(
                              'Weight',
                              style: textStyle,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              '$weight',
                              style: numberStyle,
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                RoundButton(
                                  onPressed: () {
                                    setState(() {
                                      weight++;
                                    });
                                  },
                                  buttonIcon: Icons.add,
                                ),
                                SizedBox(
                                  width: 30,
                                ),
                                RoundButton(
                                  onPressed: () {
                                    setState(
                                      () {
                                        weight--;
                                      },
                                    );
                                  },
                                  buttonIcon: Icons.remove,
                                  // buttonIcon: Icon(Icon.add),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      BmiCard(
                        cardChild: Column(
                          children: [
                            Text(
                              'Age',
                              style: textStyle,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              '$age',
                              style: numberStyle,
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                RoundButton(
                                  onPressed: () {
                                    setState(() {
                                      age++;
                                    });
                                  },
                                  buttonIcon: Icons.add,
                                ),
                                SizedBox(
                                  width: 30,
                                ),
                                RoundButton(
                                  onPressed: () {
                                    setState(
                                      () {
                                        age--;
                                      },
                                    );
                                  },
                                  buttonIcon: Icons.remove,
                                  // buttonIcon: Icon(Icon.add),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ], //children
                  ),
                ),
              ),
              FlatButton(
                onPressed: () {
                  Calculation cal = Calculation(height: height, weight: weight);
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return CalculateScreen(
                      bmiNumber: cal.bmiCal(),
                      bmiMasg: cal.bmiMsg(),
                      bmiResult: cal.bmiResult(),
                    );
                  }));
                },
                child: Container(
                  height: 60,
                  decoration: BoxDecoration(color: Colors.pink),
                  child: Center(
                    child: Text('Calculate',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontWeight: FontWeight.w900)),
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

/*class RoundButton extends StatelessWidget {
  final Function onPressed;
  final IconData buttonIcon;
  RoundButton({this.buttonIcon, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      fillColor: Colors.lightBlue,
      constraints: BoxConstraints.tightFor(width: 56, height: 56),
      elevation: 6.0,
      onPressed: onPressed,
      child: Icon(
        buttonIcon,
        color: Colors.white,
        size: 50,
      ),
    );
  }
}*/
