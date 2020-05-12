void main() {
  ContaCorrente contaAmanda = ContaCorrente();

  contaAmanda.titular = "Amanda";

  double saque = 180;

  if (contaAmanda.saldo - saque < -100) {
    print("sem saldo insuficiente");
  } else {
    print("sacando");
    contaAmanda.saldo -= saque;
  }

  print("saldo da ${contaAmanda.titular}: ${contaAmanda.saldo}");
}

class ContaCorrente {
  String titular;
  int agencia;
  int conta;
  //valor padrão do saldo deve ser zero
  double saldo = 20.0;
}
