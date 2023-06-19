class Paises{
  String? _nomePais;
  int? _populacao;
  double? _area;

  Paises(this._nomePais, this._populacao, this._area);

  double get area => _area ?? 0;

  set area(double value) {
    _area = value;
  }

  int get populacao => _populacao ?? 0;

  set populacao(int value) {
    _populacao = value;
  }

  String get nomePais => _nomePais ?? "";

  set nomePais(String value) {
    _nomePais = value;
  }

  @override
  String toString() {
    return 'Pais: $_nomePais, Populacao: $_populacao, Area: $_area}';
  }
}