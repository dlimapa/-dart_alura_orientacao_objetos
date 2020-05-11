void main() {
  ContaCorrente contaCorrente;
  String nome = "Gabriel";

  print(contaCorrente);
  print(nome);

  contaCorrente = ContaCorrente();

  print(contaCorrente);

  contaCorrente.titular = "Daniel";
  contaCorrente.agencia = 123;
  contaCorrente.conta = 12345;
  contaCorrente.saldo = 10.12;

  print("Titular: ${contaCorrente.titular}");

  print(contaCorrente.toString());
}

class ContaCorrente {
  String titular;
  int agencia;
  int conta;
  double saldo;
}
