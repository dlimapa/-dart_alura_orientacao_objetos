void main() {
  ContaCorrente contaAmanda = ContaCorrente();

  contaAmanda.titular = "Amanda";

  double saque = 80;

  bool sucesso = contaAmanda.saque(saque);

  if (sucesso) {
    print("sucesso");
  }
  print("saldo da ${contaAmanda.titular}: ${contaAmanda.saldo}");

  double saldo_atual = contaAmanda.deposito(200.0);

  print("saldo da ${contaAmanda.titular}: $saldo_atual");
}

class ContaCorrente {
  String titular;
  int agencia;
  int conta;
  //valor padrão do saldo deve ser zero
  double saldo = 20.0;

  //método de saque
  bool saque(double valorSaque) {
    if (this.saldo - valorSaque < -100) {
      print("sem saldo insuficiente");
      return false;
    } else {
      print("sacando");
      this.saldo -= valorSaque;
      return true;
    }
  }

  double deposito(double valor) {
    print("depositando");
    this.saldo += valor;
    return this.saldo;
  }
}
