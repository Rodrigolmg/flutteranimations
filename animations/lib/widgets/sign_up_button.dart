import 'package:animations/utils/labels.dart';
import 'package:flutter/material.dart';

class SignUpButton extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      padding: EdgeInsets.only(top: 160.0),
      onPressed: (){},
      child: Text(
        Label.cadastrarLabel,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontWeight: FontWeight.w400,
          color: Colors.white,
          fontSize: 12,
          letterSpacing: 0.5
        ),
      )
    );
  }
}
