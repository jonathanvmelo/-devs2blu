class Titular {
  late final String _nome;
  late final String _cpf;


  Titular(this._nome, this._cpf);

  String get nome => _nome;

  set nome(String value) {
    _nome = value;
  }

  String get cpf => _cpf;

  set cpf(String value) {
    _cpf = value;
  }
}