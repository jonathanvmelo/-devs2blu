class Animal {
  String nomeCientifico = "";
  double tamanho = 0;
  double peso = 0;
  
  void comer() {
    
  }
  
  void dormir() {
    
  }
  
  void comunicar() {
    
  }
}

class Mamifero extends Animal {
  void mamar() {
    
  }
}

class Cachorro extends Mamifero {
  void latir() {
    
  }
  
  void morder() {
    
  }
}

class Gato extends Mamifero {
  void lavar() {
    
  }
}

void darBanho(Animal animalBanhado) {
  
}

void main() {
  Cachorro dog = Cachorro();
  Gato cat = Gato();
  
  dog.dormir();
  cat.comer();
  
  darBanho(dog);
  darBanho(cat);
}
