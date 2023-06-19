import 'package:oop/aula_01/exe_05_country/Continente.dart';
import 'package:oop/aula_01/exe_05_country/Country.dart';

void main(){
  Paises pais1 = Paises("Alemanha", 86000000, 50000000);
  Paises pais2 = Paises("França", 86000000, 50000000);
  Paises pais3 = Paises("Itália", 86000000, 50000000);


  Continente continente1 = Continente("Europa");
  continente1.addPais(pais1);
  continente1.addPais(pais2);
  continente1.addPais(pais3);
  print(continente1.AreaTotal);
  print(continente1.populacaoTotal);

  print(continente1);
}