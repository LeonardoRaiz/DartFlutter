/*
Objetivo: Limpar um mapa e verificar se ele está vazio.

Crie um mapa chamado livros com os seguintes livros e suas quantidades:

"1984": 4
"Brave New World": 3
"Fahrenheit 451": 5
Limpe o mapa usando o método clear.

Verifique se o mapa está vazio usando isEmpty e imprima o resultado.
 */

void Aula09_Exercicio03() {
  var livros = {
    '1984': 4,
    'Brave New World': 3,
    'Fahrenheit 451': 5,
  };

  // Limpando o mapa
  livros.clear();

  // Verificando se o mapa está vazio
  print(livros.isEmpty); // Output: true
}
