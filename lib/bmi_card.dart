import 'package:flutter/material.dart';

class BmiCard extends StatelessWidget {
  final Widget cardChild;

  BmiCard({
    this.cardChild,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: Colors.indigo,
        ),
        child: cardChild,
      ),
    );
  }
}
