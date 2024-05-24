// Exercício 3: Interfaces
// Crie uma interface "Nadador" com um método "nadar()".
// Crie uma classe "Peixe" que implementa "Nadador" e imprime "Peixe nadando".

abstract class Nadador {
  void nadar();
}

class Peixe implements Nadador {
  @override
  void nadar() {
    print("Peixe nadando");
  }
}

void Aula11_Exercicio03() {
  var peixe = Peixe();
  peixe.nadar(); // Saída: Peixe nadando
}
