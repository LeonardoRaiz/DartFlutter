/*
Exercício
Peça ao usuário para digitar seu nome
Peça ao usuário para digitar sua idade
Se nome e idade forem digitados:
    Exiba:
        Seu nome é {nome}
        Seu nome invertido é {nome invertido}
        Seu nome contém (ou não) espaços
        Seu nome tem {n} letras
        A primeira letra do seu nome é {letra}
        A última letra do seu nome é {letra}
Se nada for digitado em nome ou idade:
    exiba "Desculpe, você deixou campos vazios."
 */

import 'dart:io';

void Aula04_Exercicio01() {
  stdout.write('Digite o seu nome: ');
  String? nome = stdin.readLineSync();
  stdout.write('Digite sua idade: ');
  String? idade = stdin.readLineSync();

  if (nome != null && idade != null) {
    print('Seu nome é $nome');
    print('Seu nome invertido é ${nome.split('').reversed.join()}');

    if (nome.contains(' ')) {
      print('Seu nome contém espaços');
    } else {
      print('Seu nome NÃO contém espaços');
    }

    print('Seu nome tem ${nome.length} letras');
    print('A primeira letra do seu nome é ${nome[0]}');
    print('A última letra do seu nome é ${nome[nome.length - 1]}');
  } else {
    print("Desculpe, você deixou campos vazios.");
  }
}