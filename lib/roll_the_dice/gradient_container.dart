import 'package:flutter/material.dart';
import 'package:fundamentals_and_challanges/roll_the_dice/dice.dart';

const Alignment _begin = Alignment.topCenter;
const Alignment _end = Alignment.bottomCenter;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this._startColor, this._endColor, {super.key});

  const GradientContainer.green({super.key})
      : _startColor = Colors.green,
        _endColor = Colors.lightGreen;

  final Color _startColor;
  final Color _endColor;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [_startColor, _endColor],
          begin: _begin,
          end: _end,
        ),
      ),
      child: Dice(),
    );
  }
}
