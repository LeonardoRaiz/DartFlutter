/*
Objetivo: Criar um StreamController e manipular os dados transmitidos por ele.

Instruções:

Crie um StreamController que emite inteiros de 1 a 5.
Adicione dois listeners que exibem os dados recebidos.
Certifique-se de fechar o StreamController após o uso.
 */

import 'dart:async';

void manipularStreams() {
  var streamController = StreamController<int>.broadcast();
  var stream = streamController.stream;

  stream.listen((data) {
    print('Listener 1 recebeu: $data');
  });

  stream.listen((data) {
    print('Listener 2 recebeu: $data');
  });

  for (int i = 1; i <= 5; i++) {
    streamController.add(i);
  }

  streamController.close();
}

void Aula13_Exercicio03() {
  manipularStreams();
}

