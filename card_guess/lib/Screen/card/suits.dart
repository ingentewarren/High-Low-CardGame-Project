import 'dart:core';
import 'package:flutter/material.dart';

class Front_Card extends StatefulWidget {
  final String imagePath;

  Front_Card(
    Key key,
    this.imagePath,
  ) : super(key: key);

  @override
  State<Front_Card> createState() => _Front_Card();
}

class _Front_Card extends State<Front_Card> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset(
        widget.imagePath,
        key: ValueKey<String>(widget.imagePath),
        height: 250,
        width: 170,
        fit: BoxFit.fill,
      ),
    );
  }
}

class Front_Card1 extends StatefulWidget {
  final String imagePath;

  const Front_Card1({
    required Key key,
    required this.imagePath,
  }) : super(key: key);

  @override
  State<Front_Card1> createState() => _Front_Card1State();
}

class _Front_Card1State extends State<Front_Card1> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image.asset(
          widget.imagePath,
          key: ValueKey<String>(widget.imagePath),
          height: 250,
          width: 170,
          fit: BoxFit.fill,
        ),
      ],
    );
  }
}

// ignore: camel_case_types

class deck {
  final int keys;
  final String imgpath;
  final int number;

  deck(this.keys, this.imgpath, this.number);
}

var card_1 = deck(1, 'images/cards/AS.png', 1);
var card_2 = deck(2, 'images/cards/AH.png', 1);
var card_3 = deck(3, 'images/cards/AC.png', 1);
var card_4 = deck(4, 'images/cards/AD.png', 1);
var card_5 = deck(5, 'images/cards/2S.png', 2);
var card_6 = deck(6, 'images/cards/2H.png', 2);
var card_7 = deck(7, 'images/cards/2C.png', 2);
var card_8 = deck(8, 'images/cards/2D.png', 2);
var card_9 = deck(9, 'images/cards/3S.png', 3);
var card_10 = deck(10, 'images/cards/3H.png', 3);
var card_11 = deck(11, 'images/cards/3C.png', 3);
var card_12 = deck(12, 'images/cards/3D.png', 3);
var card_13 = deck(13, 'images/cards/4S.png', 4);
var card_14 = deck(14, 'images/cards/4H.png', 4);
var card_15 = deck(15, 'images/cards/4C.png', 4);
var card_16 = deck(16, 'images/cards/4D.png', 4);
var card_17 = deck(17, 'images/cards/5S.png', 5);
var card_18 = deck(18, 'images/cards/5H.png', 5);
var card_19 = deck(19, 'images/cards/5C.png', 5);
var card_20 = deck(20, 'images/cards/5D.png', 5);
var card_21 = deck(21, 'images/cards/6S.png', 6);
var card_22 = deck(22, 'images/cards/6H.png', 6);
var card_23 = deck(23, 'images/cards/6C.png', 6);
var card_24 = deck(24, 'images/cards/6D.png', 6);
var card_25 = deck(25, 'images/cards/7S.png', 7);
var card_26 = deck(26, 'images/cards/7H.png', 7);
var card_27 = deck(27, 'images/cards/7C.png', 7);
var card_28 = deck(28, 'images/cards/7D.png', 7);
var card_29 = deck(29, 'images/cards/8S.png', 8);
var card_30 = deck(30, 'images/cards/8H.png', 8);
var card_31 = deck(31, 'images/cards/8C.png', 8);
var card_32 = deck(32, 'images/cards/8D.png', 8);
var card_33 = deck(33, 'images/cards/9S.png', 9);
var card_34 = deck(34, 'images/cards/9H.png', 9);
var card_35 = deck(35, 'images/cards/9C.png', 9);
var card_36 = deck(36, 'images/cards/9D.png', 9);
var card_37 = deck(37, 'images/cards/10S.png', 10);
var card_38 = deck(38, 'images/cards/10H.png', 10);
var card_39 = deck(39, 'images/cards/10C.png', 10);
var card_40 = deck(40, 'images/cards/10D.png', 10);
var card_41 = deck(41, 'images/cards/JS.png', 11);
var card_42 = deck(42, 'images/cards/JH.png', 11);
var card_43 = deck(43, 'images/cards/JC.png', 11);
var card_44 = deck(44, 'images/cards/JD.png', 11);
var card_45 = deck(45, 'images/cards/QS.png', 12);
var card_46 = deck(46, 'images/cards/QH.png', 12);
var card_47 = deck(47, 'images/cards/QC.png', 12);
var card_48 = deck(48, 'images/cards/QD.png', 12);
var card_49 = deck(49, 'images/cards/KS.png', 13);
var card_50 = deck(50, 'images/cards/KH.png', 13);
var card_51 = deck(51, 'images/cards/KC.png', 13);
var card_52 = deck(52, 'images/cards/KS.png', 13);

var list = <deck>[];

addflip() {
  list = [];
  list.add(card_1);
  list.add(card_2);
  list.add(card_3);
  list.add(card_4);
  list.add(card_5);
  list.add(card_6);
  list.add(card_7);
  list.add(card_8);
  list.add(card_9);
  list.add(card_10);
  list.add(card_11);
  list.add(card_12);
  list.add(card_13);
  list.add(card_14);
  list.add(card_15);
  list.add(card_16);
  list.add(card_17);
  list.add(card_18);
  list.add(card_19);
  list.add(card_20);
  list.add(card_21);
  list.add(card_22);
  list.add(card_23);
  list.add(card_24);
  list.add(card_25);
  list.add(card_26);
  list.add(card_27);
  list.add(card_28);
  list.add(card_29);
  list.add(card_30);
  list.add(card_31);
  list.add(card_32);
  list.add(card_33);
  list.add(card_34);
  list.add(card_35);
  list.add(card_36);
  list.add(card_37);
  list.add(card_38);
  list.add(card_39);
  list.add(card_40);
  list.add(card_41);
  list.add(card_42);
  list.add(card_43);
  list.add(card_44);
  list.add(card_45);
  list.add(card_46);
  list.add(card_47);
  list.add(card_48);
  list.add(card_49);
  list.add(card_50);
  list.add(card_51);
  list.add(card_52);
}
