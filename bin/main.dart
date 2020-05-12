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

  ContaCorrente contaTiago = ContaCorrente();

  contaTiago.titular = "Tiago";

  bool sucessoTransferencia = contaAmanda.transferencia(20.0, contaTiago);

  print("saldo da ${contaAmanda.titular}: ${contaAmanda.saldo}");
  print("saldo da ${contaTiago.titular}: ${contaTiago.saldo}");
}

class ContaCorrente {
  String titular;
  int agencia;
  int conta;
  //valor padrão do saldo deve ser zero
  double saldo = 20.0;
  double chequeEspecial = -100;

  //método de saque
  bool saque(double valorSaque) {
    if (!verificaSaldoSuficiente(valorSaque)) {
      return false;
    } else {
      print("sacando $valorSaque");
      this.saldo -= valorSaque;
      return true;
    }
  }

  double deposito(double valor) {
    print("depositando $valor");
    this.saldo += valor;
    return this.saldo;
  }

  bool transferencia(double valor, ContaCorrente contaDestino) {
    if (!verificaSaldoSuficiente(valor)) {
      return false;
    } else {
      print("transferindo");
      this.saldo -= valor;
      contaDestino.deposito(valor);
      return true;
    }
  }

  bool verificaSaldoSuficiente(double valor) {
    if (this.saldo - valor < chequeEspecial) {
      print("sem saldo suficiente");
      return false;
    } else {
      print("movimentando $valor");
      return true;
    }
  }
}
