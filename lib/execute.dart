import 'package:my_app/pessoa.dart';
import 'package:my_app/utils.dart';

void execute() {
  var nome = lerConsoleComTexto("Digite seu nome: ");
  var peso = lerDoubleComTexto("Digite seu peso: ");
  var altura = lerDoubleComTexto("Digite sua altura: ");
  Pessoa p1 = Pessoa(nome, peso, altura);
  print(
      "Olá ${p1.getNome()}, seu IMC é ${calculaIMC(p1.getPeso(), p1.getAltura())}");
  mostraIMC(calculaIMC(p1.getPeso(), p1.getAltura())!);
}
