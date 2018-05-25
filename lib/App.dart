import 'package:flutter/material.dart';
import 'package:tcc_prime_performance_flutter/PrimeNumbers.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Prime Numbers Performance',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PrimeNumbers(),
    );
  }
}