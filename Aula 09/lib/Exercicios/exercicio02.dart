/*
Objetivo: Verificar a presença de chaves e valores em um mapa.

Crie um mapa chamado estoque com os seguintes produtos e suas quantidades:

Arroz: 10
Feijão: 20
Macarrão: 15
Verifique se o produto "Feijão" está presente no mapa e imprima o resultado.

Verifique se há algum produto com quantidade 20 e imprima o resultado.
 */

void Aula08_Exercicio02() {
  var estoque = {
    'arroz': 10,
    'feijão': 20,
    'macarrão': 15,
  };

  // Verificando a presença de "feijão"
  print(estoque.containsKey('feijão')); // Output: true

  // Verificando a presença da quantidade 20
  print(estoque.containsValue(20)); // Output: true
}
