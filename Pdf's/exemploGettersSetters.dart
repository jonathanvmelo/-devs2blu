class Cachorro {
  String nome = "";
  int idade = 0;
  
  int get anosCaninos {
    return this.idade * 7;
  }
}

class ContaCorrente {
  double? _saldoAtual;
  
  double get saldoConta {
    print("get: Recuperando o valor de saldoAtual");
    
    if (this._saldoAtual == null) {
      return 0; 
    }
    return this._saldoAtual!;
  }
  
  set saldoConta(double saldo) {
    print("Set: Definindo um novo valor de saldo: ${saldo}");
    
    if (saldo < 0)
      throw "O saldo não pode ser negativo";
    
    this._saldoAtual = saldo;
  }
  
  void sacar(double valorSaque) {
    this.saldoConta = this.saldoConta - valorSaque;
  }
  
  void depositar(double valorDeposito) {
    this.saldoConta = this.saldoConta + valorDeposito;
  }
}

void main() {
  ContaCorrente conta = ContaCorrente();
  
  conta.saldoConta = 537;
  
  print(conta.saldoConta);
  
  Cachorro dog = Cachorro();
  
  dog.nome = "Totó";
  dog.idade = 3;
  
  print(dog.anosCaninos);
}