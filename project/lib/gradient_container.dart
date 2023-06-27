import 'package:flutter/material.dart';
import 'package:project/dice_roller.dart';

const startAlign = Alignment.topCenter;
const endAlign = Alignment.bottomCenter;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color, {super.key});

  final List<Color> color;


  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient:
            LinearGradient(colors: color, begin: startAlign, end: endAlign),
      ),
      child:const Center(
        child: DiceRoller()
      ),
    );
  }
}
