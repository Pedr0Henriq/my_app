// ignore: camel_case_types
class Pessoa {
  String? _nome;
  double? _altura, _peso;
  // ignore: non_constant_identifier_names
  Pessoa(String nome, double peso, double altura) {
    _nome = nome;
    _peso = peso;
    _altura = altura;
  }

  String getNome() {
    return _nome!;
  }

  double getPeso() {
    return _peso!;
  }

  double getAltura() {
    return _altura!;
  }

  void setNome(String nome) {
    _nome = nome;
  }

  void setPeso(double peso) {
    _peso = peso;
  }

  void setAltura(double altura) {
    _altura = altura;
  }
}
