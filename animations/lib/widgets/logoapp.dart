import 'package:animations/utils/grow_transition.dart';
import 'package:flutter/material.dart';

import 'logo_widget.dart';

class LoggoApp extends StatefulWidget{
  @override
  _LoggoAppState createState() => _LoggoAppState();
}

class _LoggoAppState extends State<LoggoApp> with SingleTickerProviderStateMixin{

  AnimationController _animationController;
  Animation<double> _animation;

  @override
  void initState() {

    _animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2)
    );

    _animation = CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeInOut
    )..addStatusListener((status){
      if(status == AnimationStatus.completed)
        _animationController.reverse();
      else if (status == AnimationStatus.dismissed)
        _animationController.forward();
    });

//    _animation = Tween<double>(begin: 0.0, end: 300.0)
//        .animate(_animationController)
//        ..addStatusListener((status){
//          if(status == AnimationStatus.completed)
//            _animationController.reverse();
//          else if (status == AnimationStatus.dismissed)
//            _animationController.forward();
//        });

    _animationController.forward();
    super.initState();
  }


  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimationTransition(
      child: LogoWidget(),
      animation: _animation,
    );
  }
}

//class AnimatedLogo extends AnimatedWidget{
//
//
//  AnimatedLogo(Animation<double> animation) : super(listenable: animation);
//
//  @override
//  Widget build(BuildContext context) {
//    final Animation<double> animation = listenable;
//
//    return Center(
//      child: Container(
//        height: animation.value,
//        width: animation.value,
//        child: FlutterLogo(),
//      ),
//    );
//  }
//
//}
