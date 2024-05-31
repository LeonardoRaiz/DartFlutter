import 'dart:ui';

import 'package:flutter/material.dart';

class Respostas extends StatelessWidget {
  final String texto;
  final void Function() onSelected;

  Respostas(this.texto, this.onSelected);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 50,
      margin: const EdgeInsets.all(10),
      child: ElevatedButton(
        child: Text(texto),
        style: ElevatedButton.styleFrom(
            foregroundColor: const Color.fromRGBO(255, 255, 255, 1),
            backgroundColor: Colors.green,
            disabledBackgroundColor: const Color.fromRGBO(255, 100, 100, 1),
            disabledForegroundColor: const Color.fromRGBO(255, 255, 255, 1),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            textStyle:
                const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        onPressed: onSelected,
      ),
    );
  }
}
