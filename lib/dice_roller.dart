import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget{
   const DiceRoller({Key? key}) : super(key: key);

 State<DiceRoller> createState() {

  return _DiceRollerState();
 }

}

class _DiceRollerState extends State<DiceRoller>
{
  //var activeDiceImage = 'assets/images/dice-1.png';
  var currentDiceRoll = 2;

  void rollDice() {

    //var diceRoll = Random().nextInt(6) + 1;

    setState(() {
      currentDiceRoll = Random().nextInt(6) + 1;
         //activeDiceImage = 'assets/images/dice-$diceRoll.png';
         //print('chnaging image'); 
    });
  }

  build(context) {
    return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/dice-$currentDiceRoll.png',
              width: 200,
            ),
            const SizedBox(height: 20,), // this is like <br>, it creates space vertically
            TextButton(
              onPressed: rollDice,
              style: TextButton.styleFrom(
                //padding: const EdgeInsets.only(top: 20),
                textStyle: const TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                ),
              ),
              child: const Text('Roll the Dice !'),
            ),
          ],
        );
  }
}