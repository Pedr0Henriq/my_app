import 'dart:convert';
import 'dart:io';

String lerConsoleComTexto(String texto) {
  print(texto);
  return lerConsole();
}

String lerConsole() {
  try {
    return stdin.readLineSync(encoding: utf8) ?? "";
  } catch (e) {
    return "Texto inválido";
  }
}

double lerDoubleComTexto(String texto) {
  print(texto);
  return lerDouble();
}

double lerDouble() {
  try {
    return double.parse(lerConsole());
  } catch (e) {
    return throw Exception("Número inválido");
  }
}

double? calculaIMC(double peso, double altura) {
  try {
    return (peso / (altura * altura)).round().toDouble();
  } catch (e) {
    return throw Exception("IMC inválido");
  }
}

void mostraIMC(double imc) {
  if (imc.isNaN) {
    print("IMC inválido");
  } else {
    if (imc < 18.5) {
      print("Abaixo do peso");
    } else if (imc >= 18.5 && imc < 25) {
      print("Peso normal");
    } else if (imc >= 25 && imc < 30) {
      print("Sobrepeso");
    } else if (imc >= 30 && imc < 35) {
      print("Obesidade grau 1");
    } else if (imc >= 35 && imc < 40) {
      print("Obesidade grau 2");
    } else {
      print("Obesidade grau 3");
    }
  }
}
