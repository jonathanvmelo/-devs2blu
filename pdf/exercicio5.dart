class Pais {
  late String nome;
  late int _populacao;
  late double _area;
  
  Pais({ required this.nome, required int populacaoPais, required double areaPais }) {
    this.area = areaPais;
    this.populacao = populacaoPais;
  }
  
  Pais.fromMap(Map<String, dynamic> paisMapa) {
    this.nome = paisMapa["nome"];
    this.populacao = paisMapa["populacao"];
    this.area = paisMapa["area"];
  }
    
  int get populacao => this._populacao;
  
  double get area => this._area;
  
  set area(double newArea) => this._area = newArea;
  
  set populacao(int newPopulacao) {
    if (newPopulacao < 0)
      throw "A população informada é inválida";
    
    this._populacao = newPopulacao;
  }
}

class Continente {
  String nome;
  late List<Pais> _paises;
  
  Continente({required this.nome}) {
    this._paises = [];
  }
  
  Continente.fromList({required this.nome, List<Pais>? listaPaises}) {
    this._paises = [];
    
    if (listaPaises != null)
      this._paises.addAll(listaPaises);
  }
  
  void addPais(Pais newPais) {
    this._paises.add(newPais);
  }
  
  int get totalPopulacao {
    int resultado = 0;
    
    for(Pais pais in this._paises)
      resultado += pais.populacao;
    
    return resultado;
  }
  
  double get totalArea {
    double resultado = 0;
    
    for(int i = 0; i < this._paises.length; i++)
      resultado = resultado + this._paises[i].area;
    
    return resultado;
  }
  
  Pais getPaisPorPos(int index) {
    return this._paises[index];
  }
}

void main() {
  Continente amSul = Continente(nome: "América do Sul");
  Continente americaSul = Continente.fromList(nome: "América do Sul",
                                          listaPaises: [
    Pais(nome:  "Uruguai", areaPais: 8, populacaoPais: 100),
    Pais(nome: "Bolívia", areaPais: 10, populacaoPais: 30),
    Pais(nome: "Colombia", areaPais: 100, populacaoPais: 300)
  ]);
  
  amSul.addPais(Pais(nome: "Brasil", areaPais: 8000000, populacaoPais: 2200000));
  
  amSul.addPais(Pais(nome: "Chile", areaPais: 7, populacaoPais: 18000000));
  
  amSul.addPais(Pais(nome: "Venezuela", areaPais: 1, populacaoPais: 15000));
  
  amSul.addPais( Pais.fromMap({
    "nome": "Argentina",
    "area": 4000,
    "populacao": 11231242
  }) );
  
  amSul.getPaisPorPos(0).populacao = -5990;
  
  print("Área total: ${amSul.totalArea}");
  
  print("População total: ${amSul.totalPopulacao}");
}