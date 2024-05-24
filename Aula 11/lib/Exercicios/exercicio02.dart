// Exercício 2: Polimorfismo
// Crie uma classe "Animal" com um método "fazerSom()" que imprime "Animal fazendo som".
// Crie duas classes "Gato" e "Cachorro" que herdam de "Animal" e sobrescrevem "fazerSom()"
// para imprimir "Gato miando" e "Cachorro latindo" respectivamente.

class Animal {
  void fazerSom() {
    print("Animal fazendo som");
  }
}

class Gato extends Animal {
  @override
  void fazerSom() {
    print("Gato miando");
  }
}

class Cachorro extends Animal {
  @override
  void fazerSom() {
    print("Cachorro latindo");
  }
}

void Aula11_Exercicio02() {
  List<Animal> animais = [Gato(), Cachorro()];
  for (var animal in animais) {
    animal.fazerSom();
  }
}