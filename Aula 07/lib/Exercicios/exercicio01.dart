import 'dart:io';
/*
Faça um jogo para o usuário adivinhar qual a palavra secreta.
- Você vai propor uma palavra secreta qualquer e vai dar a possibilidade para o usuário digitar apenas uma letra.
- Quando o usuário digitar uma letra, você vai conferir se a letra digitada está na palavra secreta.
    - Se a letra digitada estiver na palavra secreta; exiba a letra;
    - Se a letra digitada não estiver na palavra secreta; exiba *.
Faça a contagem de tentativas do seu usuário.
 */
void Aula07_Exercicio01() {
  String palavraSecreta = 'perfume';
  String letrasAcertadas = '';
  int numeroTentativas = 0;

  while (true) {
    stdout.write('Digite uma letra: ');
    String? letraDigitada = stdin.readLineSync();
    numeroTentativas++;

    if (letraDigitada == null || letraDigitada.length > 1) {
      print('Digite apenas uma letra.');
      continue;
    }

    if (palavraSecreta.contains(letraDigitada)) {
      letrasAcertadas += letraDigitada;
    }

    String palavraFormada = '';
    for (var letraSecreta in palavraSecreta.split('')) {
      if (letrasAcertadas.contains(letraSecreta)) {
        palavraFormada += letraSecreta;
      } else {
        palavraFormada += '*';
      }
    }

    print('Palavra formada: $palavraFormada');

    if (palavraFormada == palavraSecreta) {
      print('\x1B[2J\x1B[0;0H'); // Limpa a tela no terminal
      print('VOCÊ GANHOU!! PARABÉNS!');
      print('A palavra era $palavraSecreta');
      print('Tentativas: $numeroTentativas');
      letrasAcertadas = '';
      numeroTentativas = 0;
      break; // Encerra o loop após ganhar
    }
  }
}