/*
Variáveis são usadas para salvar algo na memória do computador.
Dart usa lowerCamelCase para nomes de variáveis.
O sinal de = é o operador de atribuição. Ele é usado para atribuir um valor
a um nome (variável).
USO: nomeVariavel = expressão
*/

import 'dart:io';

void Aula02(){
  String nome_completo = 'Leonardo Raiz';
  print(nome_completo);

  int somaDoisMaisDois = 2 + 2;
  print(somaDoisMaisDois);

  String nome = 'Leonardo';
  int idade = 34;
  bool maior_idade = idade >= 18;
  print("Nome: $nome\nIdade: $idade");
  print("Maior de idade? $maior_idade");

  /*
  Usando o prompt para inserir informações
  (Em Dart, para pegar entrada do usuário, usamos stdin.readLineSync(),
  que está disponível no pacote 'dart:io').
  */

  stdout.write("Digite o valor: ");
  //ou print
  String? entrada = stdin.readLineSync();
  int numero = entrada != null ? int.parse(entrada) : 0;
  print(numero);
  print(numero.runtimeType);

  //Interpolação de strings
  print("Soma do número $numero + 3 = ${numero + 3}");

  // -----------------------------------------------------------

  String concatenacao = 'Leonardo' + ' ' + 'Raiz';
  print(concatenacao);

  String aDezVezes = 'A' * 10;
  String tresVezesLeo = 'Leo' * 3;
  print(aDezVezes);
  print(tresVezesLeo);

}