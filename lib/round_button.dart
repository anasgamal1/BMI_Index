import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
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
}
