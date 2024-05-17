void Aula04() {
  // Interpolação Básica de Strings
  String nome = 'Leonardo';
  double preco = 1000.95897643;
  String variavel1 = '$nome, o preço é R\$${preco.toStringAsFixed(2)}';
  print(variavel1);
  print('O hexadecimal de 1500 é ${1500.toRadixString(16).toUpperCase().padLeft(8, '0')}');

  // Formatação Básica de Strings
  String variavel2 = 'ABC';
  print('$variavel2'); // Output: ABC
  print('${variavel2.padLeft(10)}'); // Output:        ABC
  print('${variavel2.padRight(10)}.'); // Output: ABC       .
  print('${variavel2.padLeft(5).padRight(10)}.'); // Output:   ABC    .
  print('${(1000.4873648123746).toStringAsFixed(1).padLeft(10, '0')}'); // Output: 00001000.5
  print('O hexadecimal de 1500 é ${1500.toRadixString(16).toUpperCase().padLeft(8, '0')}');
  print('${variavel2}'); // Output: ABC

  // Fatiamento de Strings
  String variavel3 = 'Olá mundo';
  String invertida = variavel3.split('').reversed.join('');
  print(invertida); // Output: odnum álO
  print(variavel3.substring(4)); // Output: mundo
  print(variavel3.substring(4, 8)); // Output: mund
  print(variavel3.length); // Output: 9
}