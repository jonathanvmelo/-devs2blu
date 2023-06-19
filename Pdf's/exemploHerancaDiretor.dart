class Pessoa {
  String nome = "";
  int idade = 0;
  
  void andar() {
    
  }
}

class Diretor extends Pessoa {
  String cargo = "";
  
  void darBronca() {
    print("Eita!!!!!");
  }
}

class DiretorAposentado extends Diretor {
  double valorAposentadoria =100;
}

void main() {
  DiretorAposentado aposentado = DiretorAposentado();
  
  aposentado.
}