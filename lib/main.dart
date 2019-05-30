import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: InspirePage(),
      ),
    );

class InspirePage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey.shade400,
        title: Text(
          'Inspirational Quotes',
          style: TextStyle(fontFamily: 'Pacifico', fontSize: 24.0),
        ),
        //style: TextStyle(fontFamily: 'Pacifico'),
        //fontSize: 32.0,
        centerTitle: true,
      ),
      body: MainQuotes(),
    );
  }
}

class MainQuotes extends StatefulWidget {
  @override
  _MainQuotesState createState() => _MainQuotesState();
}

class _MainQuotesState extends State<MainQuotes> {
  int quoteNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        onPressed: () {
          setState(() {
            quoteNumber = Random().nextInt(5) + 1;
          });
        },
        child: Image.asset('images/quote$quoteNumber.png'),
      ),
    );
  }
}
