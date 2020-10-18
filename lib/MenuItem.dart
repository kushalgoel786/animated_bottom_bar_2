import 'package:flutter/material.dart';
import 'package:flare_flutter/flare_actor.dart';

class MenuItem extends StatelessWidget {
  MenuItem({
    @required this.animationName,
    @required this.animation,
  });
  final String animationName;
  final String animation;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50.0,
      width: 50.0,
      child: FlareActor(
        "assets/${animationName}_Animation.flr",
        fit: BoxFit.contain,
        animation: animation,
      ),
    );
  }
}
