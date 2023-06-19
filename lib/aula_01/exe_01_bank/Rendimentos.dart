class Rendimento{
  double _taxaRendimento;

  Rendimento(this._taxaRendimento);

  double get taxaRendimento => _taxaRendimento;

  calcularRendimentoDiario(double saldo)=> saldo * (taxaRendimento / 100) / 30;

  calcularRendimentoMensal(double saldo)=> saldo * (taxaRendimento / 100);

}
