import 'package:flutter/material.dart';

class GenderCard extends StatelessWidget {
  final String name;
  final IconData genderIcon;
  final Function ontap;
  final Color iconColor;
  final Color textColor;

  GenderCard(
      {this.name, this.genderIcon, this.ontap, this.textColor, this.iconColor});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      //container
      onTap: ontap,
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(genderIcon, size: 100, color: iconColor),
            Text("$name", style: TextStyle(color: textColor, fontSize: 30)),
          ],
        ),
      ),
    );
  }
}
