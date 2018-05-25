import 'package:flutter/material.dart';
import 'dart:math';
import 'dart:core';

class PrimeNumbers extends StatefulWidget {
  PrimeNumbers();

  createState() => _PrimeNumbers();
}

class _PrimeNumbers extends State<PrimeNumbers> {
  final TextEditingController _controller = new TextEditingController();
  final times = 30;
  var currentTime = 0;

  _PrimeNumbers();

  calculatePrime() {
    print('TIME IN MICROSECONDS');
    for (var x = 0; x < this.times; x++) {
      final startTime = DateTime.now();
      final value = _controller.text == '' ? 0 : int.parse(this._controller.text.toString());

      var primeNumbers = [];
      var count = 0;
      for (var i = 2; i <= value; i++) {
        count = 0;
        for (var j = 2; j < sqrt(i).ceil(); j++) {
          if (i % j == 0) {
            count++;
            break;
          }
        }

        if (count == 0) {
          primeNumbers.add(i);
        }
      }
      final endTime = DateTime.now();
      print(endTime.microsecondsSinceEpoch - startTime.microsecondsSinceEpoch);
    }
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Prime Performance'),
      ),
      body: new Container(
        padding: new EdgeInsets.all(20.0),
        child: new Column(
          children: <Widget>[
            new TextField(
              textAlign: TextAlign.left,
              controller: _controller,
              decoration: new InputDecoration(
                hintText: '144',
              ),
            ),
            new FlatButton(
              onPressed: () {
                this.calculatePrime();
              },
              child: new Container(
                margin: new EdgeInsets.all(20.0),
                padding: new EdgeInsets.all(20.0),
                decoration: new BoxDecoration(
                  color: Colors.grey
                ),
                child: new Text('Calculate', style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}