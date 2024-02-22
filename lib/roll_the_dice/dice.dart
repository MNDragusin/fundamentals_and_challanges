import 'dart:math';

import 'package:flutter/material.dart';

class Dice extends StatefulWidget {
  const Dice({super.key});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _DiceState();
  }
}

class _DiceState extends State<Dice> {
  int _diceIndex = 1;
  final _rnd = Random();

  void _rollTheDice() {
    setState(() {
      _diceIndex = _rnd.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/dice-images/$_diceIndex.png',
            width: 250,
          ),
          const SizedBox(height: 20),
          TextButton(
              onPressed: _rollTheDice,
              child: const Text(
                "ROLL THE DICE!",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                ),
              )),
        ],
      ),
    );
  }
}
