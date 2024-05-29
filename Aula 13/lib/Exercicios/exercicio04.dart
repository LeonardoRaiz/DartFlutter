/*
Objetivo: Tratar exceções em uma função assíncrona que realiza uma divisão.

Instruções:

Crie uma função divisaoAssincrona que aceita dois números e retorna o resultado da divisão.
Lance uma exceção personalizada se o divisor for zero.
Use try/catch para capturar e exibir a exceção.
 */

class DivisaoPorZeroException implements Exception {
  String toString() => 'Não é possível dividir por zero';
}

Future<double> divisaoAssincrona(double a, double b) async {
  if (b == 0) throw DivisaoPorZeroException();
  return a / b;
}

void Aula13_Exercicio04() async {
  try {
    double resultado = await divisaoAssincrona(10, 0);
    print('Resultado: $resultado');
  } catch (e) {
    print('Erro: $e');
  }
}
