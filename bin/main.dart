void main() {
  ContaCorrente conta1 = ContaCorrente();
  ContaCorrente conta2 = ContaCorrente();

  conta1.titular = "felipe";
  conta1.agencia = 1;
  conta1.conta = 123;

  conta2.titular = "felipe";
  conta2.agencia = 1;
  conta2.conta = 123;

  print(conta1 == conta2);
  print(conta1.titular == conta2.titular);
  print(conta1.agencia == conta2.agencia);
  print(conta1.conta == conta2.conta);

  print(conta1.hashCode);
  print(conta2.hashCode);

  conta1 = conta2;

  print(conta1.hashCode);
  print(conta2.hashCode);

  print(conta1 == conta2);
}

class ContaCorrente {
  String titular;
  int agencia;
  int conta;
  //valor padrão do saldo deve ser zero
  double saldo = 0.0;
}
