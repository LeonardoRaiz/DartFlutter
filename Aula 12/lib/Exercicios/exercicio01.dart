/*
Crie uma função que receba dois números e retorne o resultado da divisão. Use try, catch e finally para tratar uma possível divisão por zero.
 */

double dividir(double a, double b) {
  try {
    return a / b;
  } catch (e) {
    print('Erro: Divisão por zero.');
    return 0;
  } finally {
    print('Operação de divisão concluída.');
  }
}

void Aula12_Exercicio01() {
  print(dividir(10, 2));
  print(dividir(10, 0));
}
