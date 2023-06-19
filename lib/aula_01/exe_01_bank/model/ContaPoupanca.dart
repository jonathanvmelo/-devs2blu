import 'Conta.dart';
import 'Titular.dart';

class ContaPoupanca extends Conta {
  double _taxaRetornoInvestimento = 0.85;

  double get taxaRetornoInvestimento => _taxaRetornoInvestimento;

  ContaPoupanca(int numero, int agencia, Titular titular)
      : super(numero, agencia, titular);



}