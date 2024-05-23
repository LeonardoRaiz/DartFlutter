/*
Escreva um programa que começa com uma lista vazia e realiza as seguintes operações:

Peça ao usuário para adicionar três itens à lista usando o método append.
Remova o último item inserido usando o método pop e imprima o item removido.
Peça ao usuário um índice e um valor para inserir na lista usando o método insert.
Imprima a lista final.
 */
import 'dart:io';

void Aula08_Exercicio01() {
  List<String> lista = [];

  // Adicionando três itens à lista
  for (int i = 0; i < 3; i++) {
    stdout.write("Digite um item para adicionar à lista: ");
    String item = stdin.readLineSync()!;
    lista.add(item);
  }

  // Removendo o último item inserido e imprimindo
  String ultimoItem = lista.removeLast();
  print("Item removido: $ultimoItem");

  // Inserindo um novo item em um índice específico
  stdout.write("Digite o índice para inserir um novo item: ");
  int indice = int.parse(stdin.readLineSync()!);
  stdout.write("Digite o novo item: ");
  String novoItem = stdin.readLineSync()!;
  lista.insert(indice, novoItem);

  // Imprimindo a lista final
  print("Lista final: $lista");

}