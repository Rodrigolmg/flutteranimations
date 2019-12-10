import 'package:flutter/material.dart';

class AnimationTransition extends StatelessWidget {

  final Animation<double> animation;

  final Widget child;

  final bool isOpacity;

  final double sizeTweenBegin;
  final double sizeTweenEnd;
  final double opacityTweenBegin;
  final double opacityTweenEnd;

  AnimationTransition({
    this.animation,
    this.child,
    this.sizeTweenBegin,
    this.sizeTweenEnd,
    this.opacityTweenBegin,
    this.opacityTweenEnd,
    this.isOpacity = false,
  });


  double _getSize(){
    final double size = Tween<double>(
        begin: sizeTweenBegin ?? 0.0,
        end: sizeTweenEnd ?? 100.0
    ).evaluate(animation);

    return size;
  }

  double _getOpacity(){
    final double opacity = Tween<double>(
        begin: opacityTweenBegin ?? 0.1,
        end: opacityTweenEnd ?? 1.0
    ).evaluate(animation);

    return opacity;
  }

  Widget _getAnimatedWidget(Widget child){

    if(isOpacity)
      return Opacity(
        opacity: _getOpacity(),
        child: Container(
          child: child,
        ),
      );

    return Container(
      width: _getSize(),
      height: _getSize(),
      child: child,
    );
  }


  @override
  Widget build(BuildContext context) {

    return AnimatedBuilder(
      animation: animation,
      builder: (context, child){
        return _getAnimatedWidget(child);
      },
      child: child,
    );
  }
}
