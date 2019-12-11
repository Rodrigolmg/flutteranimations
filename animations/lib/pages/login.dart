import 'package:animations/utils/animation_transition.dart';
import 'package:animations/widgets/form_container.dart';
import 'package:animations/widgets/sign_up_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> with SingleTickerProviderStateMixin{

  AnimationController _animationController;


  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2)
    );
  }


  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.red[400], Colors.grey[350]],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter
            )
        ),
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            Stack(
              alignment: Alignment.bottomCenter,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(top: 70, bottom: 32),
                      child: Container(
                        child: Icon(
                          Icons.check,
                          size: 200.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    FormContainer(),
                    SignUpButton()
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }

}
