/*
Definindo novos atributos: Adicione um novo atributo à classe Pessoa chamado profissao. Em seguida, crie um objeto de pessoa e atribua um valor à profissão. Por fim, imprima o nome, idade e profissão da pessoa.
 */

class Pessoa {
  String nome;
  int idade;
  String profissao;

  Pessoa(this.nome, this.idade, this.profissao);

  void saudacao() {
    print("Olá, meu nome é $nome, tenho $idade anos e sou $profissao.");
  }
}

//var pessoa = Pessoa("Ana", 30, "Engenheira");
//pessoa.saudacao();
