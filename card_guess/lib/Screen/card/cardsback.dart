import 'package:flutter/material.dart';

class back_card extends StatelessWidget {
  const back_card({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        height: 250,
        width: 170,
        decoration: BoxDecoration(
          color: Colors.black26,
          image: DecorationImage(
            image: AssetImage("images/cards/backcard.jpg"),
          ),
        ),
      ),
    );
  }
}
