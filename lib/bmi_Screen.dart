import 'package:flutter/material.dart';
import'bmi_card.dart';

class BmiScreen extends StatelessWidget {
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
                        cardChild: Column(
                          children: [

                          ],
                        ),
                      ),
                      BmiCard(
                        cardChild: Column(
                          children: [

                          ],
                        ),
                      ),
                    ], //children
                  ),
                ),
              ),
              BmiCard(
                cardChild: Column(
                  children: [

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

                          ],
                        ),
                      ),
                      BmiCard(
                        cardChild: Column(
                          children: [

                          ],
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

