import 'package:flutter/material.dart';
import 'dart:math';

import 'package:project/styled_text.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<StatefulWidget> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  final randomizer = Random();

  var diceNumber = 2;
  void rollDice() {
    setState(() {
      diceNumber = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
       const Padding(
          padding: EdgeInsets.only(
            left: 15,
            bottom: 45,
          ),
          child: StyledText(
           'Roll the dice in order to get a random outputs..',
          ),
        ),
        
        Image.asset(
          'assets/images/dice-$diceNumber.png',
          width: 200,
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            textStyle: const TextStyle(color: Colors.white, fontSize: 20),
            backgroundColor:const Color.fromARGB(255, 4, 94, 185),
            padding:
                const EdgeInsets.only(top: 10, bottom: 10, left: 5, right: 5),
          ),
          child: const Text('Roll Dice'),
        )
      ],
    );
  }
}
