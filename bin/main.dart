void main() {
  ContaCorrente contaAmanda = ContaCorrente();

  contaAmanda.titular = "Amanda";
  contaAmanda.agencia = 123;
  contaAmanda.conta = 1;
  //nao precisar iniciar, pois há valor default
  //contaAmanda.saldo = 0.0;

  print("titular: ${contaAmanda.titular}");

  print("saldo: ${contaAmanda.saldo}");
}

class ContaCorrente {
  String titular;
  int agencia;
  int conta;
  //valor padrão do saldo deve ser zero
  double saldo = 0.0;
}
