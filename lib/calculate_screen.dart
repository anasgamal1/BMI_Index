import 'package:flutter/material.dart';
/*import 'bmi_card.dart';*/

class CalculateScreen extends StatelessWidget {
  final String bmiResult;
  final String bmiNumber;
  final String bmiMasg;

  CalculateScreen({this.bmiMasg, this.bmiNumber, this.bmiResult});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CalculatePage'),
      ),
      backgroundColor: Colors.lightBlue,
      body: Column(
        children: [
          Expanded(
            child: Container(
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.indigo,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Center(
                      child: Text(
                        'Result',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 60,
                            fontWeight: FontWeight.w900),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Center(
                      child: Text(
                        '$bmiResult',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 30,
                            fontWeight: FontWeight.w900),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Center(
                      child: Text(
                        '$bmiNumber',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 80,
                            fontWeight: FontWeight.w900),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Center(
                      child: Text(
                        '$bmiMasg',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.w900),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          FlatButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Container(
              height: 60,
              decoration: BoxDecoration(color: Colors.pink),
              child: Center(
                child: Text('Re-Calculate',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.w900)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
