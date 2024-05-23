/*
Crie uma lista de nomes. Use um loop for para iterar sobre a lista e imprima cada nome com uma mensagem de saudação, por exemplo, "Olá, [nome]!".
 */

void Aula08_Exercicio05() {
  List<String> nomes = ['Maria', 'João', 'Ana', 'Pedro'];

  // Iterando sobre a lista de nomes
  for (String nome in nomes) {
    print('Olá, $nome!');
  }
}
