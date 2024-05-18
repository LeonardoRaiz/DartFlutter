import 'dart:io';

void Calculadora(){
  while (true) {
    stdout.write('Digite um número: ');
    String? numero1 = stdin.readLineSync();
    stdout.write('Digite outro número: ');
    String? numero2 = stdin.readLineSync();
    stdout.write('Digite o operador (+-/*): ');
    String? operador = stdin.readLineSync();

    double? num1Float;
    double? num2Float;

    try {
      num1Float = double.parse(numero1!);
      num2Float = double.parse(numero2!);
    } catch (e) {
      print('Um ou ambos os números digitados são inválidos.');
      continue;
    }

    const operadoresPermitidos = '+-/*';

    if (operador == null || !operadoresPermitidos.contains(operador)) {
      print('Operador inválido.');
      continue;
    }

    if (operador.length > 1) {
      print('Digite apenas um operador.');
      continue;
    }

    print('Realizando sua conta. Confira o resultado abaixo:');

    switch (operador) {
      case '+':
        print('$num1Float + $num2Float = ${num1Float + num2Float}');
        break;
      case '-':
        print('$num1Float - $num2Float = ${num1Float - num2Float}');
        break;
      case '/':
        print('$num1Float / $num2Float = ${num1Float / num2Float}');
        break;
      case '*':
        print('$num1Float * $num2Float = ${num1Float * num2Float}');
        break;
      default:
        print('Nunca deveria chegar aqui.');
    }

    stdout.write('Quer sair? [s]im: ');
    String? sair = stdin.readLineSync()?.toLowerCase();
    if (sair != null && sair.startsWith('s')) {
      break;
    }
  }
}