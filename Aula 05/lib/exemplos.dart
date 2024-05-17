
import 'dart:io';

void Aula05() {
  stdout.write('Vou dobrar o número que você digitar: ');
  String? numeroStr = stdin.readLineSync();

  try {
    double numeroFloat = double.parse(numeroStr!);
    print('FLOAT: $numeroFloat');
    print('O dobro de $numeroStr é ${(numeroFloat * 2).toStringAsFixed(2)}');
  } catch (e) {
    print('Isso não é um número');
  }



}