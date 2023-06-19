class Nota {
  String avaliacaoDescricao = "";
  double avaliacaoNota = 0;
}

class Aluno {
  String nome = "";
  List<Nota> _notas = [];
  
  void adicionarNota(String descricao, double nota) {
    Nota novaNota = Nota();
    
    novaNota.avaliacaoDescricao = descricao;
    novaNota.avaliacaoNota = nota;
    
    this._notas.add(novaNota);
  }
  
  double mediaGeral() {
    if (this._notas.isEmpty)
      throw "Nenhuma nota cadastrada";
    
    double totalNota = 0;
    
    for (Nota notaAtual in this._notas)
      totalNota = totalNota + notaAtual.avaliacaoNota;
    
    return totalNota / this._notas.length;
  }
  
  bool passouAno() { 
    return this.mediaGeral() >= 6;
  }
}

void main() {
  Aluno aluno = Aluno();
  
  aluno.nome = "Pafuncio";
  aluno.adicionarNota("Prova de biologia", 7);
  aluno.adicionarNota("Prova de história", 10);
  aluno.adicionarNota("Prova de português", 7);
  
  print(aluno.mediaGeral());
  
  
}