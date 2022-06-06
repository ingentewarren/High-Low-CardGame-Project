import 'package:card_guess/Screen/Home/how_to_play.dart';
import 'package:card_guess/Screen/card/suits.dart';
import 'package:card_guess/Screen/homescreen.dart';
import 'package:flutter/material.dart';

void main() async {
  runApp(myApp());

  addflip();
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: myHome());
  }
}

class myHome extends StatefulWidget {
  const myHome({super.key});

  @override
  State<myHome> createState() => _myHomeState();
}

class _myHomeState extends State<myHome> {
  @override
  Widget build(BuildContext context) {
    Size size1 = MediaQuery.of(context).size;
    return Container(
      height: size1.height,
      width: size1.width,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("images/backgroundimg/bac.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: SingleChildScrollView(
        child: Column(children: [
          Container(
            height: 350,
            width: 900,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                image: DecorationImage(
                    scale: 5,
                    image: AssetImage("images/backgroundimg/logo.png"),
                    fit: BoxFit.cover)),
          ),
          Container(
            child: TextButton(
              onPressed: () {
                setState(() {
                  list.shuffle();
                });
                NextScreen(context);
              },
              child: Container(
                alignment: Alignment.center,
                height: 200,
                width: 350,
                child: FittedBox(
                  child: Image.asset(
                    'images/backgroundimg/Play1.png',
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: ElevatedButton(
              child: Text(
                'HOW TO PLAY',
                style: TextStyle(fontSize: 30.0, color: Colors.white),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const How_To_Play()),
                );
              },
            ),
          ),
        ]),
      ),
    );
  }
}

/*
class textfield extends StatelessWidget {
  const textfield({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        width: 300,
        child: TextFormField(
          decoration: InputDecoration(
            fillColor: Colors.transparent,
            filled: true,
            border: UnderlineInputBorder(),
            labelText: 'log in as guest',
            hintText: 'input your nickname',
          ),
        ),
      ),
    );
  }
}
*/

void NextScreen(BuildContext context) {
  Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => firstScreen()));
}

class firstScreen extends StatelessWidget {
  const firstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: homescreen(),
    );
  }
}
