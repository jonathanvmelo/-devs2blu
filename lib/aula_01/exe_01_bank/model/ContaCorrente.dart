

import 'Conta.dart';
import 'Titular.dart';


class ContaCorrente extends Conta {
  double _limite = 1000.00;
  double _taxaTransacao = 0.50;

  ContaCorrente( int numero, int agencia, Titular titular)
      : super(numero, agencia, titular);


  ContaCorrente.abrir()
      : super(0, 0, null);

  double get limite => _limite;


  set limite(double value) {
    _limite = value;
  }

  double getSaldoComLimite() {
    return this.saldo + this.limite;
  }

@override
  bool sacar(double valor) {
    valor += taxaOperacao;
    return super.sacar(valor);
  }

  @override
  bool depositar(double valor) {
    valor -= taxaOperacao;
    return super.depositar(valor);
  }

  @override
  bool transferir(Conta contaDestino, double valor) {
    valor += taxaOperacao;
    return super.transferir(contaDestino, valor);
  }

}