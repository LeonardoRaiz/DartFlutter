/*
Capture uma exceção específica lançada ao tentar acessar um índice inexistente em uma lista.
 */

void acessarIndice(List<int> lista, int indice) {
  try {
    print(lista[indice]);
  } on RangeError {
    print('Erro: Índice fora do intervalo da lista.');
  }
}

void Aula12_Exercicio03() {
  List<int> numeros = [1, 2, 3, 4, 5];
  acessarIndice(numeros, 10);
}
