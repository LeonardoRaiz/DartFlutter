/*
Objetivo: Ler e exibir o conteúdo de um arquivo de texto de forma assíncrona.

Instruções:

Crie uma função lerArquivoAssincrono que recebe o caminho de um arquivo.
Use File e async/await para ler o conteúdo do arquivo.
Exiba o conteúdo lido no console.
 */

import 'dart:io';

Future<void> lerArquivoAssincrono(String caminho) async {
  try {
    var arquivo = File(caminho);
    var conteudo = await arquivo.readAsString();
    print('Conteúdo do arquivo: $conteudo');
  } catch (e) {
    print('Erro ao ler o arquivo: $e');
  }
}

void Aula13_Exercicio02() {
  lerArquivoAssincrono('${Directory.current.path}/lib/file.txt');
}
