void Aula09() {
  // Criando um mapa vazio
  var mapaVazio = {};

  // Criando um mapa com valores iniciais
  var frutas = {
    'maçã': 3,
    'banana': 5,
    'laranja': 2,
  };

  print(frutas); // Output: {maçã: 3, banana: 5, laranja: 2}

  // Acessando valores
  print(frutas['maçã']); // Output: 3
  print(frutas['banana']); // Output: 5

  // Adicionando e modificando valores
  frutas['laranja'] = 2; // Adicionando uma nova chave-valor
  frutas['maçã'] = 4; // Modificando um valor existente
  print(frutas); // Output: {maçã: 4, banana: 5, laranja: 2}

  // Removendo elementos
  frutas.remove('banana');
  print(frutas); // Output: {maçã: 4, laranja: 2}

  // Iterando sobre um Map usando forEach
  frutas.forEach((chave, valor) {
    print('$chave: $valor');
  });

  // Iterando sobre um Map usando for-in
  for (var chave in frutas.keys) {
    print('$chave: ${frutas[chave]}');
  }

  // Verificando a presença de uma chave ou valor
  print(frutas.containsKey('banana')); // Output: false
  print(frutas.containsValue(5)); // Output: false

  // Métodos úteis
  print(frutas.length); // Output: 2
  print(frutas.isEmpty); // Output: false
  print(frutas.isNotEmpty); // Output: true

  frutas.clear();
  print(frutas); // Output: {}

  // Tipagem dos Mapas
  Map<String, int> frutasTipadas = {
    'maçã': 4,
    'banana': 5,
    'laranja': 2,
  };

  frutasTipadas['abacaxi'] = 3; // Correto
  // frutasTipadas[3] = 'abacaxi'; // Erro: tipos incompatíveis
  print(frutasTipadas);
}
