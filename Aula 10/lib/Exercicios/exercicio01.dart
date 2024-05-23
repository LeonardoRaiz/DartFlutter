/*
 Adicione um novo método à classe Pessoa chamado aniversario(), que aumenta a idade da pessoa em 1. Em seguida, crie um objeto de pessoa, chame o método aniversario() e imprima a nova idade.

 */

class Pessoa {
  String nome;
  int idade;

  Pessoa(this.nome, this.idade);

  void saudacao() {
    print("Olá, meu nome é $nome e tenho $idade anos.");
  }

  void aniversario() {
    idade++;
  }
}

//var pessoa = Pessoa("Ana", 30);
//pessoa.aniversario();
//print("Nova idade: ${pessoa.idade}");
