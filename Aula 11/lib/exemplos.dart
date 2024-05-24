

// Herança em Dart
class Animal {
  late String nome;

  void fazerBarulho() {
    print("Animal fazendo barulho!");
  }
}

class Cachorro extends Animal {
  void latir() {
    print("Au au!");
  }
}

// // Polimorfismo em Dart
class Cachorro1 extends Animal {
  @override
  void fazerBarulho() {
    print("Au au!");
  }
}

// Interfaces em Dart
abstract class Voador {
  void voar();
}

class Passaro implements Voador {
  @override
  void voar() {
    print("Passaro voando!");
  }
}

// Abstract Classes em Dart
abstract class Forma {
  void desenhar();
}

class Circulo extends Forma {
  @override
  void desenhar() {
    print("Desenhando um círculo");
  }
}

void Aula11() {
  // Exemplos de Herança
  var cachorro = Cachorro();
  cachorro.fazerBarulho(); // Saída: Animal fazendo barulho!
  cachorro.latir(); // Saída: Au au!

  // Exemplos de Polimorfismo
  var animal = Cachorro1();
  animal.fazerBarulho(); // Saída: Au au!

  // Exemplo de Interfaces
  var passaro = Passaro();
  passaro.voar(); // Saída: Passaro voando!

  // Exemplo de Abstract Classes
  var circulo = Circulo();
  circulo.desenhar(); // Saída: Desenhando um círculo
}
