import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  //const ({super.key});

  final int pontuacao;
  final void Function() reiniciarQuestionario;

  Resultado({required this.pontuacao, required this.reiniciarQuestionario});

  String get fraseRasultado {
    if (pontuacao < 8) {
      return 'Parabéns!';
    } else if (pontuacao < 12) {
      return 'Você é bom!';
    } else if (pontuacao < 21) {
      return 'Impressionante!';
    } else {
      return 'Nível Jedi!';
    }
  }

  Color get corResultado {
    if (pontuacao < 8) {
      return const Color.fromRGBO(200, 50, 50, 1);
    } else if (pontuacao < 12) {
      return const Color.fromRGBO(220, 192, 81, 1.0);
    } else if (pontuacao < 21) {
      return const Color.fromRGBO(78, 200, 50, 1.0);
    } else {
      return const Color.fromRGBO(79, 206, 229, 1.0);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
                  width: 300,
                  margin: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: corResultado,
                  ),
                  child: Center(
                    child: Text(
                      fraseRasultado,
                      style: const TextStyle(fontSize: 40),
                    ),
                  ),
                ),
          Container(
            width: 300,
            height: 50,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  foregroundColor: const Color.fromRGBO(255, 255, 255, 1),
                  backgroundColor: Colors.green,
                  disabledBackgroundColor: const Color.fromRGBO(255, 100, 100, 1),
                  disabledForegroundColor: const Color.fromRGBO(255, 255, 255, 1),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  textStyle:
                  const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              onPressed: reiniciarQuestionario,
              child: const Text('Reiniciar'),
            ),
          )
        ],
      ),
    );
  }
}
