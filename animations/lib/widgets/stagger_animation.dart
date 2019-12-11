import 'package:animations/widgets/custom_buttom.dart';
import 'package:flutter/material.dart';

class StaggerAnimation extends StatelessWidget {

  final AnimationController animationController;
  final Animation animation;

  final double beginAnimationValue;
  final double endAnimationValue;


  StaggerAnimation({
    this.animationController,
    this.beginAnimationValue,
    this.endAnimationValue
  }): animation = Tween(
      begin: beginAnimationValue,
      end: endAnimationValue
    ).animate(
      CurvedAnimation(
        parent: animationController,
        curve: Interval(0.0, 0.150)
      )
    );

  Widget _buildAnimation(BuildContext context, Widget child){
    return Padding(
      padding: EdgeInsets.only(
        bottom: 50.0
      ),
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      builder: _buildAnimation,
      animation: animationController,
    );
  }
}
