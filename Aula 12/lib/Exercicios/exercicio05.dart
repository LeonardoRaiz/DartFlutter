/*
Implemente um exemplo onde várias exceções específicas são capturadas antes de capturar uma exceção genérica. Mostre uma mensagem diferente para cada tipo de exceção.
 */

void exemploVariasExcecoes() {
  try {
    var lista = [1, 2, 3];
    print(lista[5]);
    var resultado = 10 ~/ 0;
    print(resultado);
  } on RangeError {
    print('Erro: Índice fora do intervalo da lista.');
  } on UnsupportedError {
    print('Erro: Divisão por zero.');
  } catch (e) {
    print('Erro genérico: $e');
  } finally {
    print('Bloco finally executado.');
  }
}

void Aula12_Exercicio05() {
  exemploVariasExcecoes();
}
