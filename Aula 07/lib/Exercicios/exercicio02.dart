/*
Peça ao usuário para digitar uma frase. Use um loop for para adicionar asteriscos antes e depois de cada caractere na frase. Por exemplo, a frase "gato" deve ser transformada em "gato*". Imprima a nova string transformada.
 */

import 'dart:io';

void Aula07_Exercicio02() {
  stdout.write("Digite uma frase: ");
  String? frase = stdin.readLineSync();
  if (frase == null) {
    print("Entrada inválida");
    return;
  }

  String novoTexto = '';
  for (var letra in frase.split('')) {
    novoTexto += '*$letra';
  }
  novoTexto += '*';

  print(novoTexto);
}