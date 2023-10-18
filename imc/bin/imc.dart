import 'dart:convert';
import 'dart:io';
import 'package:imc/class/pessoa.dart';
import 'package:imc/imc.dart' as imc;

void main(List<String> arguments) {
  print("Digite Seu Nome: ");
  String? nome = stdin.readLineSync(encoding: utf8);
  print("Digite Seu Peso");
  double? peso = double.tryParse(stdin.readLineSync(encoding: utf8)!);
  print("Digite Sua Altura: ");
  double? altura = double.tryParse(stdin.readLineSync(encoding: utf8)!);

  var pessoa = Pessoa(nome!, peso!, altura!);

  print(pessoa.verificarImc());
}
