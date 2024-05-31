import 'package:flutter/material.dart';
import 'package:projeto_perguntas/questao.dart';
import 'package:projeto_perguntas/respostas.dart';

void main() => runApp(new PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var perguntaSelecionada = 0;

  void _responder() {
    setState(() {
      perguntaSelecionada++;
    });
    print(perguntaSelecionada);
  }

  @override
  Widget build(BuildContext context) {
    final List<Map<String, Object>> perguntas = [
      {
        'texto': 'Qual é a sua cor favorita?',
        'respostas': ['Preto', 'Roxo', 'Vermelho', 'Branco']
      },
      {
        'texto': 'Qual é o seu animal favorito?',
        'respostas': ['Coelho', 'Cobre', 'Elefante', 'Leão']
      },
      {
        'texto': 'Qual é o seu professor favorito?',
        'respostas': ['Léo', 'Maria', 'João', 'Pedro']
      },
    ];

    List<String> respostas = perguntas[perguntaSelecionada].cast()['respostas'];

    // for (var textoResp in respostas) {
    //   widgets.add(Respostas(textoResp, _responder));
    // }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Perguntas'),
        ),
        body: Column(
          children: [
            Questao(perguntas[perguntaSelecionada]['texto'].toString()),
            // todos os elementos add na lista
            ...respostas.map((texto) => Respostas(texto, _responder))
          ],
        ),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
