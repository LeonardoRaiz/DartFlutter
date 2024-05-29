import 'package:flutter/material.dart';

void main() => runApp(new PerguntaApp());


class PerguntaApp extends StatelessWidget {

  void responder() {
    print('Pergunta respondida');
  }

  void Function() funcaoQueRetornaOutraFuncao() {
    return () {
      print('Pergunta respondida 02');
    };
  }

  @override
  Widget build(BuildContext context) {
    final List<String> perguntas = [
      'Qual é a sua cor favorita?',
      'Qual é o seu animal favorito?',
    ];


    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Perguntas'),
        ),
        body: Column(
          children: [
            Text(perguntas[0]),
            ElevatedButton(onPressed: responder, child: Text('Resposta 1')),
            ElevatedButton(onPressed: () => {
              print('Resposta 02')
            }, child: Text('Resposta 2')),
            ElevatedButton(onPressed: funcaoQueRetornaOutraFuncao(), child: Text('Resposta 3')),
          ],
        ),
      ),
    );
  }
}