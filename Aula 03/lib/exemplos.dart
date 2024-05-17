import 'dart:io';

void Aula03() {
  // Exemplo 1: if / else if / else
  stdout.write('Você quer "entrar" ou "sair"? ');
  String? entrada = stdin.readLineSync();

  if (entrada == 'entrar') {
    print('Você entrou no sistema');
    print(12341234);
  } else if (entrada == 'sair') {
    print('Você saiu do sistema');
  } else {
    print('Você não digitou nem entrar e nem sair.');
  }

  print('FORA DOS BLOCOS');

  // ---------------------------------------------------------------------------------

  bool condicao1 = true;
  bool condicao2 = true;
  bool condicao3 = true;
  bool condicao4 = true;

  if (condicao1) {
    print('Código para condição 1');
    print('Código para condição 1');
  } else if (condicao2) {
    print('Código para condição 2');
  } else if (condicao3) {
    print('Código para condição 3');
  } else if (condicao4) {
    print('Código para condição 4');
  } else {
    print('Nenhuma condição foi satisfeita.');
  }

  if (10 == 10) {
    print('Outro if');
  }

  print('Fora do if');

  // --------------------------------------------------------------------

  /*
  Operadores de comparação (relacionais)
  OP      Significado         Exemplo (True)
  >       maior               2 > 1
  >=      maior ou igual      2 >= 2
  <       menor               1 < 2
  <=      menor ou igual      2 <= 2
  ==      igual               'a' == 'a'
  !=      diferente           'a' != 'b'
  */
  bool maior = 2 > 1;
  bool maiorOuIgual = 2 >= 2;
  bool menor = 1 < 2;
  bool menorOuIgual = 2 <= 2;
  bool igual = 'a' == 'a';
  bool diferente = 'a' != 'b';

  print(maior);
  print(maiorOuIgual);
  print(menor);
  print(menorOuIgual);
  print(igual);
  print(diferente);
  print('Olha meu print aqui');

  // --------------------------------------------------------------------------
  // Operadores lógicos
  // && (and) || (or) ! (not)
  // && - Todas as condições precisam ser verdadeiras.
  // Se qualquer valor for considerado falso, a expressão inteira será avaliada naquele valor
  // São considerados falsy (que você já viu)
  // 0 0.0 '' false
  // Também existe o tipo null que é usado para representar um não valor

  stdout.write('[E]ntrar [S]air: ');
  String? escolha = stdin.readLineSync();
  stdout.write('Senha: ');
  String? senhaDigitada = stdin.readLineSync();

  String senhaPermitida = '123456';

  if (escolha == 'E' && senhaDigitada == senhaPermitida) {
    print('Entrar');
  } else {
    print('Sair');
  }

  // Avaliação de curto-circuito
  print(true && false && true);
  print(true && 0 == 1 && true);

  String senha = stdin.readLineSync() ?? 'Sem senha';
  print(senha);

  print(!true); // false
  print(!false); // true

  // not in
  stdout.write('Digite seu nome: ');
  String? nome = stdin.readLineSync();
  stdout.write('Digite o que deseja encontrar: ');
  String? encontrar = stdin.readLineSync();

  if (nome != null && encontrar != null && nome.contains(encontrar)) {
    print('$encontrar está em $nome');
  } else {
    print('$encontrar não está em $nome');
  }

  // ---------------------------------------------------------------------------
  // Switch case em Dart
  // Exemplo 2: switch case
  stdout.write('Escolha uma opção (entrar, sair, help): ');
  String? opcao = stdin.readLineSync();

  switch (opcao) {
    case 'entrar':
      print('Você escolheu entrar');
      break;
    case 'sair':
      print('Você escolheu sair');
      break;
    case 'help':
      print('Você pediu ajuda');
      break;
    default:
      print('Opção desconhecida');
  }

  print('Fora do switch');
}