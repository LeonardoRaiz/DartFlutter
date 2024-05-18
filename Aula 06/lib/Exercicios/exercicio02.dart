import 'dart:io';
/*
Desenvolva um programa que conta de 1 a 100 usando um loop while. Para cada número, o programa deve verificar:

Se o número é igual a 50, use break para sair do loop.
Se o número é múltiplo de 10, use continue para não imprimir este número.
Imprima os números que não são múltiplos de 10 e pare a contagem quando chegar a 50.
 */
void Aula02_Exercicio02(){
  int contador = 1;

  while (contador <= 100) {
    if (contador == 50) {
      print(contador);
      break;
    }
    if (contador % 10 == 0) {
      contador += 1;
      continue;
    }
    print(contador);
    contador += 1;
  }
}