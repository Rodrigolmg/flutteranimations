import 'package:animations/utils/labels.dart';
import 'package:animations/widgets/custom_buttom.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart' show timeDilation;

class StaggerAnimationLoginButton extends StatelessWidget {

  final AnimationController animationController;
  final Animation<double> buttonSqueeze;
  final Animation<double> buttonZoomOut;


  StaggerAnimationLoginButton({
    this.animationController,
  }): buttonSqueeze = Tween(
      begin: 350.0,
      end: 60.0
    ).animate(
      CurvedAnimation(
        parent: animationController,
        curve: Interval(0.0, 0.150)
      )
    ),
    buttonZoomOut = Tween(
      begin: 60.0,
      end: 1000.0
    ).animate(
      CurvedAnimation(
        parent: animationController,
        curve: Interval(0.5, 1.0, curve: Curves.bounceOut)
      )
    );


  Widget _buildAnimation(BuildContext context, Widget child){
    return Padding(
      padding: EdgeInsets.only(
        bottom: 50.0
      ),
      child: buttonZoomOut.value <= 60 ?
      Container(
        width: buttonSqueeze.value,
        height: 60.0,
        child: CustomButton(
          largura: buttonSqueeze.value,
          altura: 60.0,
          buttonColor: Colors.red[400],
          label: _buildInside(context),
          callback: (){
            animationController.forward();
          },
        ),
      ) : Container(
        width: buttonZoomOut.value,
        height: buttonZoomOut.value,
        decoration: BoxDecoration(
          color: Colors.red[400],
          borderRadius: BorderRadius.circular(50.0)
        ),
      ),
    );
  }

  Widget _buildInside(BuildContext context){
    return buttonSqueeze.value > 75.0
        ? Text(
          Label.labelEntrar,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
            fontWeight: FontWeight.w300,
            letterSpacing: 0.3
          ),
        )
        : CircularProgressIndicator(
          valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
          strokeWidth: 2.0,
        );

  }

  @override
  Widget build(BuildContext context) {
//    timeDilation = 2;
    return AnimatedBuilder(
      builder: _buildAnimation,
      animation: animationController,
    );
  }
}
