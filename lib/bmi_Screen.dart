import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import'bmi_card.dart';
import 'gender_card.dart';


class BmiScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: SafeArea(child: Container(
          child: Column(
            children: [
              Expanded(
                child: Container(
                  child: Row(
                    children: [
                      BmiCard(
                        cardChild: GenderCard(name:'Male',genderIcon: Icons.male, ontap:(){
                          print('male');
                        },),
                      ),
                      BmiCard(
                        cardChild: GenderCard(name:'Female',genderIcon: Icons.female ,ontap:(){
                      print('female');
                      },),
                      ),
                    ], //children
                  ),
                ),
              ),
              BmiCard(

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



