// Arquivo: classes_e_objetos.dart

// Definição da Classe Pessoa
class Pessoa {
  String nome;
  int idade;

  // Construtor
  Pessoa(this.nome, this.idade); //usado para inicializar as propriedades do objeto.

  // Método
  void saudacao() {
    print("Olá, meu nome é $nome e tenho $idade anos.");
  }
}

// Função principal
void Aula10() {
  // Criando objetos da classe Pessoa
  var pessoa1 = Pessoa("Ana", 30);
  var pessoa2 = Pessoa("João", 25);

  // Chamando métodos dos objetos
  pessoa1.saudacao();
  pessoa2.saudacao();
}
