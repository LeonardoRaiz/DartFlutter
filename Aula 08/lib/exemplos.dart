void Aula08() {
  // Listas em Dart
  // Tipo List - Mutável
  // Suporta vários valores de qualquer tipo

  // Exemplo de string
  String string = 'ABCDE';  // 5 caracteres (length)

  // Exemplo de lista com valores diferentes
  List<dynamic> lista = [123, true, 'Leonardo Raiz', 1.2, []];
  lista[2] = 'Carolina';
  print(lista);
  print(lista[2]);
  print(lista[2].runtimeType);

  // Métodos úteis:
  // - add: Adiciona um item ao final
  // - insert: Adiciona um item no índice escolhido
  // - removeAt: Remove do índice escolhido
  // - removeLast: Remove o último item
  // - clear: Limpa a lista
  // - addAll: Estende a lista
  // - + : Concatena listas

  List<int> lista1 = [10, 20, 30, 40];
  lista1.add(50);
  lista1.removeLast();
  lista1.add(60);
  lista1.add(70);
  int ultimoValor = lista1.removeAt(3);
  print('$lista1, Removido: $ultimoValor');

  List<dynamic> lista2 = [10, 20, 30, 40];
  lista2.add('Leonardo');
  String nome = lista2.removeLast();
  lista2.add(1233);
  lista2.removeLast();
  lista2.insert(4, 5);
  if (lista2.length > 4) {
    print(lista2[4]);
  } else {
    print('Índice fora do intervalo');
  }

  // Concatenando listas
  List<int> listaA = [1, 2, 3];
  List<int> listaB = [4, 5, 6];
  List<int> listaC = [...listaA, ...listaB];
  listaA.addAll(listaB);
  print(listaA);

  // Cuidados com dados mutáveis
  // = - copia o valor (imutáveis)
  // = - aponta para o mesmo valor na memória (mutável)
  List<dynamic> lista3 = ['Leonardo', 'Carolina', 1, true, 1.2];
  List<dynamic> lista4 = List.from(lista3); // Copiando a lista

  lista3[0] = 'Qualquer coisa';
  print(lista3);
  print(lista4);

  // for in com listas
  List<String> lista5 = ['Lana', 'Leonardo', 'Carolina'];

  for (var nome in lista5) {
    print('$nome, ${nome.runtimeType}');
  }

  // Empacotamento e Desempacotamento
  var nomes = ['Maria', 'Helena', 'Luiz'];
  var nome2 = nomes[1];
  print(nome2);

  var nome1 = nomes[2];
  var resto = nomes.sublist(3);
  print('$nome1 $resto');

  // Tipo Lista Imutável (usando const para imutabilidade)
  var nomesImutaveis = const ['Maria', 'Helena', 'Luiz'];
  print(nomesImutaveis[1]);
  print(nomesImutaveis);

  // Enumerate (com índice)
  var lista6 = ['Maria', 'Helena', 'Luiz'];
  lista6.add('João');

  for (var i = 0; i < lista6.length; i++) {
    print('$i ${lista6[i]}');
  }

  // Split e Join com List e String
  var frase = '   Olha só que   , coisa interessante          ';
  var listaFrasesCruas = frase.split(',');

  var listaFrases = [];
  for (var frase in listaFrasesCruas) {
    listaFrases.add(frase.trim());
  }

  print(listaFrasesCruas);
  print(listaFrases);
  var frasesUnidas = listaFrases.join(', ');
  print(frasesUnidas);

  // Lista de listas e seus índices
  var salas = [
    ['Maria', 'Helena'],
    ['Elaine'],
    ['Luiz', 'João', 'Eduarda'],
  ];

  for (var sala in salas) {
    print('A sala é $sala');
    for (var aluno in sala) {
      print(aluno);
    }
  }
}
