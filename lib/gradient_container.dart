import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:test_one/styled_text.dart';
import 'package:test_one/dice_roller.dart';


var startAlignment = Alignment.bottomLeft;
var endAlignment = Alignment.topRight;

class GradientContainer extends StatelessWidget {
 const  GradientContainer(this.color1, this.color2, {Key? key})
      : super(key: key);

  final Color color1;
  final Color color2;



  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}

/*
class GradientContainer extends StatelessWidget {
  const GradientContainer({Key? key, required this.colors}) : super(key: key);

  final List<Color> colors;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(
        child: StyledText('Rawa Rashid / this text is done by parameter')
      ),
    );
  }
}
*/