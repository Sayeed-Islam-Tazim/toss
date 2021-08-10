import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Colors.black12,
      appBar: AppBar(
        title: Text(
          "Toss through coin",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
      ),
      body: TossPage(),
    ),
  ));
}

class TossPage extends StatefulWidget {
  const TossPage({Key key}) : super(key: key);

  @override
  _TossPageState createState() => _TossPageState();
}

class _TossPageState extends State<TossPage> {
  @override
  int coinNumber = 1;
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  coinNumber = Random().nextInt(2) + 1;
                });
                print('Coin Touched');
              },
              child: Image.asset('images/coin$coinNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}
