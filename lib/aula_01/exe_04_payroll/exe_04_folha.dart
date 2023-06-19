


class Funcionario{
  String? _nome;
  int? _matricula;

  FolhaSalarial? _salario;

  FolhaSalarial get getSalario => _salario!;

  set setSalario(FolhaSalarial value) {
    _salario = value;
  }

  String get getNome => _nome ?? "Funcionario";

  set setNome(String value) {
    _nome = value;
  }

  int get getMatricula => _matricula ?? 1;

  set setMatricula(int value) {
    if(value <= 0){
      throw 'valor inválido';
    }
    _matricula = value;
  }

  @override
  String toString() {
    return 'Funcionario{_nome: $_nome, _matricula: $_matricula, salario: $_salario}';
  }
}

class FolhaSalarial{
  double? _valorRecebidoHora;
  double? _horasTrabalhadas;

  List<Funcionario> funcionarios = [];

  double get getValorRecebidoHora => _valorRecebidoHora!;

  set setValorRecebidoHora(double value) {
    _valorRecebidoHora = value;
  }

  double calcularSalario()=> getValorRecebidoHora * horasTrabalhadas;

  double get horasTrabalhadas => _horasTrabalhadas!;

  set horasTrabalhadas(double value) {
    _horasTrabalhadas = value;
  }
}

class FolhaSalarialVendedor{

}


void main(){

  Funcionario funcionario1 = Funcionario();

  funcionario1.setMatricula = 101;
  funcionario1.setNome = "Vanessa";
  funcionario1._nome = "Carla";
  // funcionario1.salario = fSalarial;

  FolhaSalarial fSalarial = FolhaSalarial();

  // fSalarial.horasTrabalhadas = 44;
  // fSalarial.valorRecebidoHora = 25;
  // fSalarial.calcularSalario();
  // print(fSalarial.calcularSalario());
  // fSalarial.funcionarios.add(funcionario1);

  print(funcionario1);

}
