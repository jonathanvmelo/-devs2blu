enum Signos { Capricornio, Peixes, Aquario,
              Aries, Touro, Gemeos, Cancer, Leao, Virgem, Libra, Escorpiao,
              Sagitario}

class SalaAula {
  List<Pessoa> alunos = [];
  Pessoa instrutor = Pessoa();
  
  void addAluno(Pessoa novoAluno) {
    this.alunos.add(novoAluno);
  }
  
  void addAlunoPorInfo(String nome, Signos signo, int idade) {
    Pessoa novoAluno = Pessoa();
    
    novoAluno.nome = nome;
    novoAluno.idade = idade;
    novoAluno.signo = signo;
    
    this.addAluno(novoAluno);
  }
  
  void listarAlunosPresentes() {
    print("Instrutor: ${this.instrutor.meApresentar()}");
    
    print("Alunos presentes hoje: ");
    
    for (int i = 0; i < this.alunos.length; i++)
      print(this.alunos[i].nome);
  }
}

class Pessoa {
  String nome = "";
  int idade = 0;
  Signos signo = Signos.Capricornio;
  
  void fazerAniversario() {
    this.idade++;
  }
  
  String meuSigno() {
    return "Meu signo é ${this.signo.toString()}";
  }
  
  String meApresentar() {
    return "Olá, meu nome é ${this.nome}, tenho ${this.idade} ano e ${this.meuSigno()}";
  }
}


void main() {
 SalaAula salaYellow = SalaAula();
 
 salaYellow.addAlunoPorInfo("Maria", Signos.Libra, 23);
 salaYellow.addAlunoPorInfo("Lucas", Signos.Leao, 17);
  
 salaYellow.instrutor.nome = "Fernando Duwe";
 salaYellow.instrutor.signo = Signos.Capricornio;
 salaYellow.instrutor.idade = 33;
 
 salaYellow.listarAlunosPresentes();
}