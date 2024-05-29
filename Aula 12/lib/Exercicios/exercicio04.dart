/*
Crie uma função que leia um arquivo. Use try, catch e finally para garantir que o arquivo seja fechado mesmo que uma exceção ocorra.
 */

import 'dart:io';
import 'dart:convert';

void lerArquivo(String caminho) {
  File arquivo = File(caminho);
  RandomAccessFile? raf;

  try {
    raf = arquivo.openSync(mode: FileMode.read);
    print('Arquivo aberto.');
    List<int> bytes = raf.readSync(raf.lengthSync());
    String conteudo = utf8.decode(bytes);
    print('Conteúdo do arquivo:');
    print(conteudo);
  } catch (e) {
    print('Ocorreu um erro ao ler o arquivo: $e');
  } finally {
    if (raf != null) {
      raf.closeSync();
      print('Arquivo fechado.');
    }
  }
}

void Aula12_Exercicio04() {
  // Usando caminho relativo ao diretório atual
  String caminho = '${Directory.current.path}/lib/Exercicios/file.txt';

  // Verificando se o arquivo existe antes de tentar lê-lo
  if (File(caminho).existsSync()) {
    lerArquivo(caminho);
  } else {
    print('Arquivo não encontrado: $caminho');
  }
}
