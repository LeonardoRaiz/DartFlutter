/*
Entrada e Condicionais

Objetivo: Praticar entrada de dados e condicionais.

Instruções:

Solicite ao usuário para inserir uma cor.
Se a cor for "azul", imprima "Você escolheu azul".
Se a cor for "vermelho", imprima "Você escolheu vermelho".
Para qualquer outra cor, imprima "Cor não reconhecida".
 */

import 'dart:io';

void Aula03_Exercicio01() {
  stdout.write('Digite uma cor: ');
  String? cor = stdin.readLineSync();

  if (cor == 'azul') {
    print('Você escolheu azul');
  } else if (cor == 'vermelho') {
    print('Você escolheu vermelho');
  } else {
    print('Cor não reconhecida');
  }
}