class Pessoa {
  String nome;
  DateTime? dataNascto;
  String endereco;
  
  Pessoa(this.nome, this.endereco, [ this.dataNascto ]);
}

class MembroClube extends Pessoa {
  late String _matricula;
  
  MembroClube(String prMatricula, String prNome, String prEndereco) : super(prNome, prEndereco) {
    this._matricula = prMatricula;
  }
  
  String get matricula => this._matricula;
}

class VendaIngresso {
  String? evento;
  DateTime? dataCompra;
  MembroClube? comprador;
}

class Ticket {
  String numPoltrona;
  Pessoa pessoa;
  
  Ticket(this.numPoltrona, this.pessoa) {
    if (this.pessoa is MembroClube) {
      print("É um membro do clube: ${(this.pessoa as MembroClube).matricula}");
    } else {
      print("É uma pessoa");
    }
  }
}

void main() {
  Pessoa pessoa1 = Pessoa("Fernando", "Rua Teste");
  MembroClube membro = MembroClube("123", "Anacleto", "Rua do Pitagoras");
  
  Ticket ticket = Ticket("14A", pessoa1);
}

