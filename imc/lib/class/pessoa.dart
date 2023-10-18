import 'package:imc/imc.dart';

class Pessoa {
  Pessoa(String nome, double peso, double altura) {
    _nome = nome;
    _peso = peso;
    _altura = altura;
  }

  String _nome = "";
  double _peso = 0.0;
  double _altura = 0.0;

  String verificarImc() {
    String resultado = calculateIMC(_peso / (_altura * _altura));
    return "$_nome Seu IMC indica que vc $resultado";
  }
}
