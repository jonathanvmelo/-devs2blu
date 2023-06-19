import 'package:oop/aula_01/exe_01_bank/Rendimentos.dart';

import 'Conta.dart';
import 'Titular.dart';

class ContaPoupanca extends Conta {
  double? _taxaRetornoInvestimento = 0.85;
  Rendimento rendimentos;

  double get taxaRetornoInvestimento => _taxaRetornoInvestimento!;

  ContaPoupanca(int numeroConta, int agencia, Titular titular, [this._taxaRetornoInvestimento])
      : _taxaRetornoInvestimento = 1,
        rendimentos = Rendimento(_taxaRetornoInvestimento!),
        super(numeroConta, agencia, titular);

}