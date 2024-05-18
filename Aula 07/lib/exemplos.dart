void Aula07() {
  // Código comentado sobre repetição infinita omitido

  // Parte 1: Manipulação de strings com um loop for
  String texto = 'Dart';
  String novoTexto = '';

  for (var letra in texto.split('')) {
    novoTexto += '*$letra';
    print(letra);
  }
  print('$novoTexto*');

  // Parte 2: Uso de for com range
  List<int> numeros = List.generate((100 / 8).ceil(), (i) => i * 8);

  for (var numero in numeros) {
    print(numero);
  }

  // Parte 3: Loop for com continue, break e nested loops
  for (var i = 0; i < 10; i++) {
    if (i == 2) {
      print('i é 2, pulando...');
      continue;
    }

    if (i == 8) {
      print('i é 8, seu else não executará');
      break;
    }

    for (var j = 1; j < 3; j++) {
      print('$i $j');
    }
  }

  print('For completo com sucesso!');
}