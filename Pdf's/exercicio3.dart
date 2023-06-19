class Carro {
  double quilometragemAtual = 0;
  double litrosGasolinaTanque = 0;
  String numeroPlaca = "";
  double velocidade = 0;
  
  bool _ligado = false;
  
  bool get ligado => this._ligado;
  
  bool get carroLigado {
    return this._ligado;
  }
  
  void ligar() {
    if (this._ligado)
      throw "O carro já está ligado";
    
    this._ligado = true;
    
    print("Carro ligado: Catchau!");
    
    print("Ligando: ${this.runtimeType}");
  }
  
  void desligar() {
    if (this._ligado == false)
      throw "O carro já está desligado";
    
    this._ligado = false;
    
    print("Carro desligado: Tchuprex");
  }
  
  void acelerar() {
    if (!this._ligado)
      throw "Não é possível acelerar um carro desligado";
    
    if (this.litrosGasolinaTanque == 0) {
      this.desligar();
      
      throw "Pane seca";
    }
    
    this.velocidade++;
    this.litrosGasolinaTanque--;
    this.quilometragemAtual++;
    
    print("Carro acelerando: vruum!!!");
  }
  
  void frear() {
    if (!this._ligado)
      throw "Carro desligado, não é possível frear";
    
    this.velocidade = 0;
    
    print("Carro freando: rrrrrrr");
  }
}

class Jipe extends Carro {
  bool _modo4x4 = false;
  
  void ativar4x4() {
    if (!this.ligado)
      throw "O jipe não está ligado. Não é possível ativar o modo 4x4";
    
    if (this._modo4x4)
      throw "Modo 4x4 já está ativo. Não é possível ativar.";
    
    this._modo4x4 = true;
    
    print("Modo 4x4 ativado!");
  }
  
  void desativar4x4() {
    if (this.ligado == false)
      throw "O jipe não está ligado. Não é possível desativar o modo 4x4";
    
    if (!this._modo4x4)
      throw "Modo 4x4 já está inativo. Não é possível desativar.";
    
    this._modo4x4 = false;
    
    print("Modo 4x4 inativado!");
  }
}

void main() {
  Carro fusca = Carro();
  Jipe jipe = Jipe();
  
  fusca.ligar();
  fusca.desligar();
  
  jipe.litrosGasolinaTanque = 50;
  
  jipe.ligar();
  
  jipe.acelerar();
  jipe.ativar4x4();
  
  jipe.desligar();
}