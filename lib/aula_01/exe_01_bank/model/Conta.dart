import 'package:oop/aula_01/exe_01_bank/Transacao.dart';
import 'EnumTipoTransacao.dart';
import 'Titular.dart';

abstract class Conta {
  final int _numero;
  int _agencia;
  late double _saldo;
  late final Titular? _titular;
  late double _taxaOperacao;
  late List<Transacao> extrato = [];

  Conta(this._numero, this._agencia, this._titular)
      : _saldo = 0,
        _taxaOperacao = 0.50;

  Titular get titular => _titular!;

  double get saldo => _saldo;

  double get taxaOperacao => _taxaOperacao;

  set taxaOperacao(double value) {
    _taxaOperacao = value;
  }

  set saldo(double value) {
    this._saldo = value;
  }

  int get agencia => _agencia;

  int get numero => _numero;

  set titular(Titular value) {
    _titular = value;
  }

  bool sacar(double valor) {
    if (saldo >= valor) {
      this.saldo -= valor;
      extrato.add(Transacao(TipoTransacao.saque, -valor));
      return true;
    }
    return false;
  }

  bool depositar(double valor) {
    this._saldo += valor;
    extrato.add(Transacao(TipoTransacao.deposito, valor));
    return true;
  }

  bool transferir(Conta contaDestino, double valor) {
    if (this._saldo >= valor) {
      this._saldo -= valor;
      contaDestino.depositar(valor);
      extrato.add(Transacao(TipoTransacao.transferencia, -valor));
      return true;
    }
    return false;
  }

  void imprimirExtrato() {
    print("Extrato da Conta: $numero - Agência: $agencia");
    for (var transacao in extrato) {
      print("${transacao.data.toString()} - ${_getDescricaoTransacao(transacao.tipo)} - ${transacao.valor.toString()}");
    }
  }

  String _getDescricaoTransacao(TipoTransacao tipo) {
    switch (tipo) {
      case TipoTransacao.saque:
        return "Saque";
      case TipoTransacao.deposito:
        return "Depósito";
      case TipoTransacao.transferencia:
        return "Transferência";
      case TipoTransacao.rendimentoMensal:
        return "Rendimento Mensal";
    }
  }
}
