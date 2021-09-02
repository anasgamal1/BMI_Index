import'package:flutter/material.dart';
class GenderCard extends StatelessWidget {
  final String name;
  final IconData genderIcon;
  final Function ontap;
  GenderCard({ required this.name, required this.genderIcon,required this.ontap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(//container
      onTap:ontap(),
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(genderIcon , size :100 , color:Colors.white),
            Text("$name" ,style:TextStyle(color: Colors.white ,fontSize: 30) ),
          ],
        ),
      ),
    );
  }
}