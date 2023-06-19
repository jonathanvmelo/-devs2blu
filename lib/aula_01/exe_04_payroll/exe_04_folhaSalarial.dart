// class Funcionario{
//   String? _nome;
//   String? _cargo;
//   double? _salario;
//   FolhaSalarial? _salario;
//
//   Funcionario(){
//     _nome = "";
//     _salario = FolhaSalarial.vazio()
//   }
//
// }
//
// class FolhaSalarial {
//   double? _valorRecebidoHora;
//   double? _horasTrabalhadas;
//
//   FolhaSalarial.vazio();
//
//   double get horasTrabalhadas => _horasTrabalhadas ?? 0.0;
//
//   set horasTrabalhadas(double value) {
//     _horasTrabalhadas = value;
//   }
//
//   double get valorRecebidoHora => _valorRecebidoHora ?? 0.0;
//
//   set valorRecebidoHora(double value) {
//     _valorRecebidoHora = value;
//   }
//
//   double calcularSalario() => valorRecebidoHora * horasTrabalhadas;
//
//   @override
//   String toString() {
//     return '{valorRecebido: $valorRecebidoHora, horasTrabalhadas: $horasTrabalhadas}';
//   }
// }
//
// class FolhaSalarialVendedor extends FolhaSalarial {
//   int _qntVendas;
//   double _bonificacao;
//
//   FolhaSalarialVendedor(
//       double valorRecebidoHora,
//       double horasTrabalhadas,
//       this._qntVendas,
//       this._bonificacao,
//       ) : super(valorRecebidoHora, horasTrabalhadas);
//
//   int get qntVendas => _qntVendas;
//
//   set qntVendas(int value) {
//     _qntVendas = value;
//   }
//
//   @override
//   double calcularSalario() {
//     double salarioBase = super.calcularSalario();
//     return salarioBase + (_bonificacao * _qntVendas);
//   }
//
//   double get bonificacao => _bonificacao;
//
//   set bonificacao(double value) {
//     _bonificacao = value;
//   }
// }
//
// void main() {
//   FolhaSalarial folhaSalarial = FolhaSalarial.vazio();
//   folhaSalarial.horasTrabalhadas = 180.0;
//   folhaSalarial.valorRecebido = 20.0;
//   print(folhaSalarial.calcularSalario()); // Output: 3600.0
//
//   FolhaSalarialVendedor folhaSalarialVendedor = FolhaSalarialVendedor(25.0, 200.0, 10, 50.0);
//   print(folhaSalarialVendedor.calcularSalario()); // Output: 7500.0
// }