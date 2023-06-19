class Titular {
  late final String _nome;
  late final String _cpf;
  late final String _email;

  Titular(this._nome, this._cpf, this._email);

  String get nome => _nome;

  set nome(String value) {
    _nome = value;
  }

  String get cpf => _cpf;

  set cpf(String value) {
    _cpf = value;
  }

  String get email => _email;

  set email(String value) {
    _email = value;
  }
}