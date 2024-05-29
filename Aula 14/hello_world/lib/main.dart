import 'package:flutter/material.dart';

void main() => runApp(new Hello_World());


class Hello_World extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Text('Olá Mundo!'),
    );
  }
}