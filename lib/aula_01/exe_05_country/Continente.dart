import 'Country.dart';

class Continente{
  String? _nomeContinente;
  List<Paises>? _listaPaises;

  Continente(this._nomeContinente){
   _listaPaises = [];
  }

  addPais(Paises pais){
    _listaPaises?.add(pais);
  }

  int get populacaoTotal {
    int populacao = 0;
    for (var pais in _listaPaises!) {
      populacao += pais.populacao;
    }
    return populacao;
  }

  double get AreaTotal{
    double areaTotal = 0;
    for(var pais in _listaPaises!){
      areaTotal += pais.area;
    }
    return areaTotal;
  }

  @override
  String toString() {
    return '{Continente: $_nomeContinente, Pais: $_listaPaises}';
  }
}