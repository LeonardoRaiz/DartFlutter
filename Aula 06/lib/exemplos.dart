import 'dart:io';

void Aula06() {

  bool condicao = true;


  /*
  Repetições
  while (enquanto)
  Executa uma ação enquanto uma condição for verdadeira
  Loop infinito -> Quando um código não tem fim
  */
  condicao = true;

  while (condicao) {
    stdout.write('Qual o seu nome: ');
    String? nome = stdin.readLineSync();
    print('Seu nome é $nome');

    if (nome == 'sair') {
      break;
    }
  }

  print('Acabou');

  double contador = 0;

  while (contador <= 10) {
    contador = contador + 1;
    print(contador);
  }

  print('Acabou');

  /*
  Operadores de atribuição
  = += -= *= /= ~/= %= **=
  */
  contador = 10;
  contador /= 5;
  print(contador);

  contador = 0;

  while (contador <= 100) {
    contador += 1;

    if (contador == 6) {
      print('Não vou mostrar o 6.');
      continue;
    }

    if (contador >= 10 && contador <= 27) {
      print('Não vou mostrar o $contador');
      continue;
    }

    print(contador);

    if (contador == 40) {
      break;
    }
  }

  print('Acabou');

  int qtdLinhas = 5;
  int qtdColunas = 5;

  int linha = 1;
  while (linha <= qtdLinhas) {
    int coluna = 1;
    while (coluna <= qtdColunas) {
      print('linha=$linha coluna=$coluna');
      coluna += 1;
    }
    linha += 1;
  }

  print('Acabou');
}
