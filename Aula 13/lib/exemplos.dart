// Arquivo: operacoes_assincronas.dart

import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;

// Future e async/await
Future<String> fetchData() {
  return Future.delayed(Duration(seconds: 2), () => 'Dados carregados');
}

void Aula13() async {
  print('Aula sobre Operações Assíncronas em Dart\n');

  // Utilizando async/await
  await exemploAsyncAwait();

  // Tratamento de erros com try/catch
  await exemploTryCatch();

  // Streams
  exemploStreams();

  // StreamControllers
  exemploStreamControllers();

  // Leitura de dados de uma API
  await fetchDataFromAPI();

  // Operações de I/O (leitura de arquivos)
  await readFile();
}

Future<void> exemploAsyncAwait() async {
  print('Exemplo de async/await:');
  print('Carregando dados...');
  String data = await fetchData();
  print(data);
  print('');
}

Future<void> exemploTryCatch() async {
  print('Exemplo de try/catch com async/await:');
  try {
    print('Carregando dados...');
    String data = await fetchData();
    print(data);
  } catch (e) {
    print('Ocorreu um erro: $e');
  }
  print('');
}

// Streams
Stream<int> countStream(int max) async* {
  for (int i = 1; i <= max; i++) {
    await Future.delayed(Duration(seconds: 1));
    yield i;
  }
}

void exemploStreams() {
  print('Exemplo de Streams:');
  Stream<int> stream = countStream(5);
  stream.listen((value) {
    print('Número: $value');
  });
  print('');
}

// StreamControllers
void exemploStreamControllers() {
  print('Exemplo de StreamControllers:');
  final controller = StreamController<int>.broadcast();
  final stream = controller.stream;

  stream.listen((value) {
    print('Número: $value');
  });

  for (int i = 1; i <= 5; i++) {
    controller.add(i);
  }

  controller.close();
  print('');
}

// Leitura de dados de uma API
Future<void> fetchDataFromAPI() async {
  print('Exemplo de leitura de dados de uma API:');
  final url = 'https://jsonplaceholder.typicode.com/posts/1';
  final response = await http.get(Uri.parse(url));
  if (response.statusCode == 200) {
    final data = json.decode(response.body);
    print('Título: ${data['title']}');
  } else {
    print('Erro na requisição: ${response.statusCode}');
  }
  print('');
}

// Operações de I/O (leitura de arquivos)
Future<void> readFile() async {
  print('Exemplo de operações de I/O (leitura de arquivos):');
  try {
    final file = File('${Directory.current.path}/lib/file.txt');
    String contents = await file.readAsString();
    print('Conteúdo do arquivo: $contents');
  } catch (e) {
    print('Ocorreu um erro ao ler o arquivo: $e');
  }
  print('');
}
