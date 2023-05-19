import 'package:flutter/material.dart';
import 'package:test_one/styled_text.dart';

var startAlignment = Alignment.bottomLeft;
var endAlignment = Alignment.topRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer({Key? key}) : super(key: key);

  @override
  Widget build(context) {
    return Container(
      decoration:  BoxDecoration(
        gradient: LinearGradient(
          colors: const [
            Colors.deepPurple,
            Colors.deepPurpleAccent,
          ],
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

