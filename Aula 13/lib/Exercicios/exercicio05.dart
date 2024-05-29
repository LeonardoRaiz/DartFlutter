/*
Objetivo: Criar uma pipeline de transformação de dados usando Streams.

Instruções:

Crie um StreamController que emite strings.
Crie uma função de transformação que converte as strings para maiúsculas.
Adicione um listener para exibir as strings transformadas.
 */

import 'dart:async';

void pipelineDeTransformacao() {
  var streamController = StreamController<String>();
  var stream = streamController.stream.map((s) => s.toUpperCase());

  stream.listen((data) {
    print('String transformada: $data');
  });

  streamController.add('olá');
  streamController.add('mundo');
  streamController.close();
}

void Aula13_Exercicio05() {
  pipelineDeTransformacao();
}
