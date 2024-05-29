/*
Criar uma função que faz uma requisição HTTP a uma API pública e exibe os dados recebidos.

Instruções:

Crie uma função fetchUserData que faz uma requisição HTTP para https://jsonplaceholder.typicode.com/users/1.
Use async/await para esperar pela resposta.
Exiba o nome do usuário na saída.
 */

import 'dart:convert';
import 'dart:io';

Future<void> fetchUserData() async {
  try {
    var url = Uri.parse('https://jsonplaceholder.typicode.com/users/1');
    var response = await HttpClient().getUrl(url).then((request) => request.close());
    var responseBody = await response.transform(utf8.decoder).join();
    var data = jsonDecode(responseBody);
    print('Nome do usuário: ${data['name']}');
  } catch (e) {
    print('Erro ao buscar dados do usuário: $e');
  }
}

void Aula13_Exercicio01() {
  fetchUserData();
}
