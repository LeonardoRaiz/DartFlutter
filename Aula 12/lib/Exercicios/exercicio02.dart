/*
Crie uma exceção personalizada chamada SaldoInsuficienteException para uma função de saque bancário. Lance essa exceção quando o saldo for insuficiente.
 */

class SaldoInsuficienteException implements Exception {
  String mensagem;
  SaldoInsuficienteException(this.mensagem);

  @override
  String toString() => 'SaldoInsuficienteException: $mensagem';
}

void sacar(double saldo, double valor) {
  if (valor > saldo) {
    throw SaldoInsuficienteException('Saldo insuficiente para realizar o saque.');
  } else {
    print('Saque realizado com sucesso.');
  }
}

void Aula12_Exercicio02() {
  double saldo = 100;

  try {
    sacar(saldo, 150);
  } catch (e) {
    print(e);
  }
}
