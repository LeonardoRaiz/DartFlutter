import 'package:flutter/material.dart';
import 'package:projeto_perguntas/questao.dart';
import 'package:projeto_perguntas/respostas.dart';

class Questionario extends StatelessWidget {
  final int perguntaSelecionada;
  final List<Map<String, Object>> perguntas;
  final void Function(int) responder;
  final bool temPerguntaSelecionada;

  Questionario({
    required this.perguntaSelecionada,
    required this.responder,
    required this.perguntas,
    required this.temPerguntaSelecionada,
  });

  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>> respostas = temPerguntaSelecionada
        ? perguntas[perguntaSelecionada].cast()['respostas']
            as List<Map<String, Object>>
        : [];
    return Column(
      children: [
        Questao(perguntas[perguntaSelecionada]['texto'].toString()),
        // todos os elementos add na lista
        ...respostas.map((resp) => Respostas(resp['texto'] as String,
            () => responder(int.parse(resp['pontuacao'].toString()))))
      ],
    );
  }
}
