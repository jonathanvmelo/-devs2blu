class ContaCorrente {
  double _saldoAtual = 0;
  
  void depositar(double valorADepositar) {
    if (valorADepositar <= 0)
      throw "O valor a ser depositado deve ser maior que zero.";
    
    this._saldoAtual = this._saldoAtual + valorADepositar;
  }
  
  void sacar(double valorASacar) {
    if (valorASacar <= 0)
      throw "O valor a ser sacado deve ser maior que zero.";
    
    if (valorASacar > this._saldoAtual)
      throw "Limite excedido";
    
    this._saldoAtual = this._saldoAtual - valorASacar;
  }
  
  double getSaldoAtual() => this._saldoAtual;
}

void main() {
  List<ContaCorrente> contas = [];
  
  contas.add(ContaCorrente());
  contas.add(ContaCorrente());
  contas.add(ContaCorrente());
  
  contas[0].depositar(300);
  contas[1].depositar(100);
  contas[2].depositar(150);
  
  contas[0].sacar(100);
  contas[1].sacar(5000);
  contas[2].sacar(5);
}