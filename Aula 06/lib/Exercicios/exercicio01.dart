import 'dart:io';

/*
Crie um programa que pede ao usuário para digitar números continuamente até que o número 0 seja digitado. Use um loop while para continuar pedindo os números. Quando 0 for digitado, o loop deve terminar e o programa deve imprimir "Loop encerrado".
 */

void Aula06_Exercicio01(){
  print("Digite números e digite 0 para sair.");
  while (true) {
    stdout.write("Digite um número: ");
    var input = stdin.readLineSync();
    var numero = int.tryParse(input ?? '');

    if (numero == 0) {
      print("Loop encerrado");
      break;
    }
  }
}