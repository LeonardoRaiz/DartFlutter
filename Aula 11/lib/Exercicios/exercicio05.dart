// Exercício 5: Herança Múltipla (Mixin)
// Crie uma classe "Voar" com um método "voar()".
// Crie uma classe "Nadar" com um método "nadar()".
// Crie uma classe "Pato" que usa as duas classes para implementar as duas habilidades.

mixin Voar {
  void voar() {
    print("Voando");
  }
}

mixin Nadar {
  void nadar() {
    print("Nadando");
  }
}

class Pato with Voar, Nadar {}

void Aula11_Exercicio05() {
  var pato = Pato();
  pato.voar(); // Saída: Voando
  pato.nadar(); // Saída: Nadando
}