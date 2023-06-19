class Nota{
  String avaliacaoDescricao = "";
  double avaliacaoNota = 0;

  @override
  String toString() {
    return '\nDescricao: $avaliacaoDescricao, Nota: $avaliacaoNota\n';
  }
}

class Aluno {
  String nome = "";
  List<Nota> _notas = [];

  void addNota(String descricao, double nota){
    Nota novaNota = Nota();
    novaNota.avaliacaoDescricao = descricao;
    novaNota.avaliacaoNota = nota;
    this._notas.add(novaNota);
  }

  double mediaGeral(){
    if(this._notas.isEmpty){
      throw 'Nenhuma nota';
    }
    double totalNota = 0;

    for(Nota notaAtual in _notas){
      totalNota += notaAtual.avaliacaoNota;
    }
    return totalNota /_notas.length;
  }

  String passou()=> mediaGeral() >= 6 ? " Aluno(a) $nome: Aprovado" : "Aluno(a) $nome Reprovado" ;
}

void main(){
  Aluno aluno = Aluno();
  aluno.nome = "Jozi";
  aluno.addNota("Matemática", 5);
  aluno.addNota("inglês", 6);
  aluno.addNota("Física", 6);

  print(aluno._notas);
  print(aluno.mediaGeral());
  print(aluno.passou());
}