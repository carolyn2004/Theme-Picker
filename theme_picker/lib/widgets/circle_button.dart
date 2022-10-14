import 'package:flutter/material.dart';

class CircleButton extends StatelessWidget {

  Function setTheme;
  String buttonText;
  MaterialColor buttonColor;
  CircleButton(this.setTheme, this.buttonText, this.buttonColor);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text(buttonText),
      style: ElevatedButton.styleFrom(
        primary: buttonColor,
        shape: CircleBorder(),
        minimumSize: Size(50, 50),
      ),
      onPressed: () {
       setTheme(buttonText);
      },
    );
  }
}
