// Exercício 1: Herança Básica
// Crie uma classe base "Veiculo" com um método "mover()" que imprime "O veículo está se movendo".
// Crie uma classe derivada "Carro" que herda de "Veiculo" e sobrescreve o método "mover()" para imprimir "O carro está se movendo".

class Veiculo {
  void mover() {
    print("O veículo está se movendo");
  }
}

class Carro extends Veiculo {
  @override
  void mover() {
    print("O carro está se movendo");
  }
}

void Aula11_Exercicio01() {
  var carro = Carro();
  carro.mover(); // Saída: O carro está se movendo
}