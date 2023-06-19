

import 'model/ContaCorrente.dart';
import 'model/ContaPoupanca.dart';
import 'model/Titular.dart';

void main() {


  Titular titular1 = Titular("Aws", "054.655.565");
  Titular titular2 = Titular("Google", "044.555.564");

  ContaCorrente contaCorrente1 = ContaCorrente(1, 1, titular1);
  ContaPoupanca contaPoupanca1 = ContaPoupanca(2, 1, titular2);

  contaCorrente1.depositar(1000);
  contaPoupanca1.depositar(5000);

  contaCorrente1.sacar(200);
  contaPoupanca1.sacar(1000);

  contaCorrente1.imprimirExtrato();
  print("\n");
  contaPoupanca1.imprimirExtrato();
}


