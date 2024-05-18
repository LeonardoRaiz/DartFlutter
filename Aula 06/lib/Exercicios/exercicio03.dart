/*
Escreva um programa que usa dois loops while aninhados para imprimir uma matriz de 3x3. Cada posição na matriz deve ser representada por um par de coordenadas (linha, coluna). O programa deve imprimir todas as posições da matriz.
 */

void Aula06_Exercicio03() {
  int linha = 1;
  int qtdLinhas = 3;
  int qtdColunas = 3;

  while (linha <= qtdLinhas) {
    int coluna = 1;
    while (coluna <= qtdColunas) {
      print('(linha=$linha, coluna=$coluna)');
      coluna += 1;
    }
    linha += 1;
  }
}