class CalcularConsumoMedia {
  double combustivelTotal = 0;
  double combustiveAtual = 0;
  double quilometragemPercorrida = 0;
  
  double calcularMedia() {
    double combustivelConsumido = this.combustivelTotal - this.combustiveAtual;
    
    if (combustivelConsumido == 0)
      return 0;
    
    return (this.quilometragemPercorrida / combustivelConsumido);
  }
}

class Carro {
  double combustivelTotal = 0;
  double combustivelAtual = 0;
  double? quilometragemPercorrida;
  
  Carro({required this.combustivelTotal,
         required this.combustivelAtual,
         required this.quilometragemPercorrida});
  
  Carro.tanqueCheio(this.combustivelTotal) {
    this.combustivelAtual = this.combustivelTotal;
    
    this.quilometragemPercorrida = 0;
  }
  
  void percorrerDistancia(double distancia) {
    if (this.quilometragemPercorrida == null) {
      this.quilometragemPercorrida = distancia;
    } else {
      this.quilometragemPercorrida = this.quilometragemPercorrida! + distancia;
    }
  }
  
  double calcularMedia() {
    CalcularConsumoMedia calcular = CalcularConsumoMedia();
    calcular.combustivelTotal = this.combustivelTotal;
    calcular.combustiveAtual = this.combustivelAtual;
    calcular.quilometragemPercorrida = (this.quilometragemPercorrida ?? 0);
    
    return calcular.calcularMedia();
  }
}

void main() {
  Carro carro = Carro.tanqueCheio(50);
  carro.percorrerDistancia(50);
  //carro.combustivelAtual -= 15;
  
  print(carro.calcularMedia());
}