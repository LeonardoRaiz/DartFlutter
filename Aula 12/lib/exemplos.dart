// 1. Try, catch, finally
void exemploTryCatchFinally() {
  try {
    var result = 10 ~/ 0;
    print(result);
  } catch (e) {
    print('Ocorreu uma exceção: $e');
  } finally {
    print('Este bloco é executado sempre, independentemente de uma exceção ter sido lançada ou não.');
  }
}

// 2. Criação de Exceções Personalizadas
class MinhaExcecao implements Exception {
  String mensagem;
  MinhaExcecao(this.mensagem);

  @override
  String toString() => 'MinhaExcecao: $mensagem';
}

void verificarIdade(int idade) {
  if (idade < 18) {
    throw MinhaExcecao('Idade deve ser maior ou igual a 18.');
  } else {
    print('Idade válida.');
  }
}

void exemploExcecaoPersonalizada() {
  try {
    verificarIdade(15);
  } catch (e) {
    print(e);
  }
}

// 3. Boas Práticas na Manipulação de Exceções
void exemploBoasPraticas() {
  try {
    var result = 10 ~/ 0;
    print(result);
  } on IntegerDivisionByZeroException {
    print('Erro: Divisão por zero.');
  } catch (e) {
    print('Erro: $e');
  }

  var file = './file.txt';
  try {
    // Simulação de abertura e leitura de um arquivo
    print('Abrindo o arquivo...');
    // Gerar uma exceção de exemplo
    throw Exception('Falha ao ler o arquivo.');
  } catch (e) {
    print('Ocorreu um erro ao processar o arquivo: $e');
  } finally {
    // Simulação de fechamento de um arquivo
    print('Arquivo fechado.');
  }
}

void Aula12() {
  exemploTryCatchFinally();
  exemploExcecaoPersonalizada();
  exemploBoasPraticas();
}
