// Exercício 4: Classes Abstratas
// Crie uma classe abstrata "Forma" com um método "calcularArea()".
// Crie duas classes "Quadrado" e "Circulo" que herdam de "Forma" e implementam "calcularArea()"
// para calcular a área do quadrado e do círculo respectivamente.

abstract class Forma {
  double calcularArea();
}

class Quadrado extends Forma {
  double lado;
  Quadrado(this.lado);

  @override
  double calcularArea() {
    return lado * lado;
  }
}

class Circulo extends Forma {
  double raio;
  Circulo(this.raio);

  @override
  double calcularArea() {
    return 3.14 * raio * raio;
  }
}

void Aula11_Exercicio04() {
  var formas = [Quadrado(4), Circulo(3)];
  for (var forma in formas) {
    print("Área: ${forma.calcularArea()}");
  }
}