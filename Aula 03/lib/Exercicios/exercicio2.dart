/*
Praticar o uso do switch case.

Instruções:

Solicite ao usuário para inserir um comando (start, stop, pause).
Use um switch case para tratar cada comando:
Se o comando for "start", imprima "Iniciando".
Se o comando for "stop", imprima "Parando".
Se o comando for "pause", imprima "Pausando".
Para qualquer outro comando, imprima "Comando desconhecido".
 */
import 'dart:io';
void Aula03_Exercicio02() {
  stdout.write('Digite um comando (start, stop, pause): ');
  String? comando = stdin.readLineSync();

  switch (comando) {
    case 'start':
      print('Iniciando');
      break;
    case 'stop':
      print('Parando');
      break;
    case 'pause':
      print('Pausando');
      break;
    default:
      print('Comando desconhecido');
  }
}