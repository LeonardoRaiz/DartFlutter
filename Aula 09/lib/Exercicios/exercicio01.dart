/*
Objetivo: Iterar sobre um mapa de produtos e seus preços, imprimindo cada produto e seu respectivo preço.

Crie um mapa chamado produtos com os seguintes produtos e preços:

Pão: 1.5
Leite: 2.3
Café: 4.0
Use um loop forEach para imprimir cada produto e seu preço.
 */

void Aula09_Exercicio01() {
  var produtos = {
    'pão': 1.5,
    'leite': 2.3,
    'café': 4.0,
  };

  // Iterando e imprimindo cada produto e preço
  produtos.forEach((produto, preco) {
    print('$produto: \$${preco}');
  });
}
