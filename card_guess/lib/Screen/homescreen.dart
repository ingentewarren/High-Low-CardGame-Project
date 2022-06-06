import 'dart:ui';
import 'package:card_guess/Screen/Home/flip_card.dart';
import 'package:flutter/material.dart';

class homescreen extends StatelessWidget {
  const homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    //total size for our screen!
    Size size = MediaQuery.of(context).size;
    return Container(
        height: size.height,
        width: size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/backgroundimg/bac.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Row(
          children: [
            Container(
              height: size.height,
              width: size.width,
              child: center_Content(),
            ),
          ],
        ));
  }
}

class logo extends StatelessWidget {
  const logo({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Container(
        height: 100,
        width: 400,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/backgroundimg/logo.png"),
              fit: BoxFit.cover),
        ),
      ),
    );
  }
}

class center_Content extends StatelessWidget {
  const center_Content({super.key});

  @override
  Widget build(BuildContext context) {
    Size size2 = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          logo(),
          ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Center(
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                  child: Align(
                    alignment: Alignment(0, 0.7),
                    child: Container(
                      height: 700,
                      width: 600,
                      decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Text(
                              "GUESS THE CARD",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 255, 255, 255),
                                decoration: TextDecoration.none,
                                wordSpacing: 5,
                              ),
                            ),
                          ),
                          Container(width: size2.width, child: flipCard()),
                        ],
                      ),
                    ),
                  ),
                ),
              )),
        ],
      ),
    );
  }
}

class Flipcard extends StatefulWidget {
  final String imgpath;
  const Flipcard({required Key key, required this.imgpath}) : super(key: key);
  final int xy = 0;

  @override
  State<Flipcard> createState() => _FlipcardState();
}

class _FlipcardState extends State<Flipcard> {
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      widget.imgpath,
      key: ValueKey<String>(widget.imgpath),
      height: 290,
      width: 200,
      fit: BoxFit.fill,
    );
  }
}
