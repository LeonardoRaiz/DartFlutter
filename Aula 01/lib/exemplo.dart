void Aula01() {
  print(123);

  /*
  comentários
  Aqui pode escrever quantas linhas necessárias
  */

  print("Hello World");


  // -------------------- Tipos de Dados --------------------------------------

  /*
  Dart = Linguagem de programação
  Tipo de tipagem = Estática / Forte
  String -> texto
  Strings são textos que estão dentro de aspas
  */

  // Aspas simples
  print('Leonardo Raiz');

  // Aspas duplas
  print("Leonardo Raiz");

  // Escape
  print("Leonardo \"Raiz\"");
  print('Forma mais clara - Leonardo "Raiz"');


  // ---------------------------------------------------------------------------------

  /*
  Tipos int e double
  int -> Número inteiro
  O tipo int representa qualquer número positivo ou negativo.
  int sem sinal é considerado positivo
  */

  print(10);  // int
  print(-10); // int
  print(0);   // int

  /*
  Tipos int e double
  double -> Número com ponto flutuante
  O tipo double representa qualquer número positivo ou negativo com ponto flutuante.
  double sem sinal é considerado positivo
  */
  print(1.10); // double

  // A função ou classe! runtimeType mostra o tipo que o Dart inferiu o valor

  print(10.runtimeType);
  print(10.5.runtimeType);
  print('teste'.runtimeType);

  // ----------------------------------------------------------------------

  /*
  Tipo de dado bool (boolean)
  Ao questionar algo em um programa, só existem duas respostas possíveis:
  SIM (true) ou NÃO (false)
  Existem vários operadores para "questionar". Dentre eles o ==, que é um operador lógico
  que questiona se um valor é igual a outro
  */
  print(10 == 10); // Sim => True (Verdadeiro)
  print(10 == 11); // Não => False (Falso)
  print((10 == 11).runtimeType);

  // ---------------------------------------------------------------

  /*
  Conversão de tipo, coerção
  type convertion, typecasting, coercion
  é o ato de converter um tipo em outro
  tipos imutáveis e primitivos:
  int, double, String, bool
  */

  print(1 + 1);
  print('a' + 'b');
  // print("1" + 1); // Não funciona
  print(int.parse('1'));
  print(int.parse('1').runtimeType);
  print(int.parse("1") + 1);
  print(11.toString() + 'b');
  print(' '.isNotEmpty);
}