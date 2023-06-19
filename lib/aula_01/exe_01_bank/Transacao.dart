import 'model/EnumTipoTransacao.dart';

class Transacao {
  late TipoTransacao tipo;
  late double valor;
  late DateTime data;

  Transacao(this.tipo, this.valor)
      : data = DateTime.now();

  late List<Transacao> extrato = [];


}