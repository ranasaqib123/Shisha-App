import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int _ham = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      child: Row(children: <Widget>[
        GestureDetector(
          child: Icon(
            Icons.remove,
            size: 18,
          ),
          onTap: () {
            if (_ham > 1) setState(() => --_ham);
          },
        ),
        Text(_ham.toString()),
        GestureDetector(
            onTap: () {
              if (_ham < 10) setState(() => ++_ham);
            },
            child: Icon(Icons.add, size: 18)),
      ], mainAxisAlignment: MainAxisAlignment.spaceBetween),
    );
  }
}
