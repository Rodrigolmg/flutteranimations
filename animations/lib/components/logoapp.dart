import 'package:flutter/material.dart';

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

    _animation = Tween<double>(begin: 0.0, end: 300.0)
        .animate(_animationController)..addListener((){
      setState(() {

      });
    });

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
    return AnimatedLogo(_animation);
  }
}

class AnimatedLogo extends AnimatedWidget {

  Animation animation;

  AnimatedLogo(this.animation);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: animation.value,
        width: animation.value,
        child: FlutterLogo(),
      ),
    );
  }

}
