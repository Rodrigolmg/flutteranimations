import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {

  var controller;

  final Widget icon;
  final Widget label;

  final Color buttonColor;
  final Color textColor;

  final double largura;
  final double altura;

  final Function callback;

  CustomButton({
    this.buttonColor,
    this.textColor,
    this.largura,
    this.altura,
    this.callback,
    this.icon,
    this.label
  });

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      minWidth: largura ?? 0.0,
      height: altura ?? 0.0,
      child: RaisedButton(
        color: buttonColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        onPressed: callback,
        padding: const EdgeInsets.all(8.0),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              icon ?? Container(),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: label,
              )
            ],
          ),
        ),
      ),
    );
  }
}
