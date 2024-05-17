/*
Peça ao usuário para digitar dois números. Use um bloco try/except para lidar com a divisão dos números. Se a divisão for possível, imprima o resultado. Se a divisão por zero ocorrer, imprima "Erro: divisão por zero".
 */


import 'dart:io';

void Aula05_Exercicio01() {
  stdout.write("Digite o numerador: ");
  String? numeradorStr = stdin.readLineSync();
  stdout.write("Digite o denominador: ");
  String? denominadorStr = stdin.readLineSync();

  try {
    double numerador = double.parse(numeradorStr!);
    double denominador = double.parse(denominadorStr!);

    if (denominador == 0) {
      throw Exception("Erro: divisão por zero.");
    }

    double resultado = numerador / denominador;
    print("O resultado da divisão é $resultado");
  } on FormatException {
    print("Por favor, insira apenas números.");
  } catch (e) {
    print(e);
  }
}