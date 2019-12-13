import 'package:flutter/material.dart';

import '../home_top.dart';

class StaggerAnimationHome extends StatelessWidget {

  final AnimationController animationController;
  final Animation<double> containerGrow;

  StaggerAnimationHome({@required this.animationController}) :
    containerGrow = CurvedAnimation(
      parent: animationController,
      curve: Curves.ease
    );

  Widget _buildAnimation(BuildContext context, Widget child){
    return ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        HomeTop(
          containerGrow: this.containerGrow
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: AnimatedBuilder(
          animation: this.animationController,
          builder: _buildAnimation
        ),
      ),
    );
  }
}
