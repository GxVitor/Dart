import 'dart:convert';
import 'dart:io';

class ConsoleUtils {
  //Static para accessar o metodo sem Instanciar a Class com parametro String que pode passar um texto
  static String inputString({String? texto}) {
    //Verificar se tem parametro
    if (texto != null) {
      //printa o texto e depois ler o console
      print(texto);
      return stdin.readLineSync(encoding: utf8) ?? "";
    } else {
      //Ler o console
      return stdin.readLineSync(encoding: utf8) ?? "";
    }
  }

  static double? inputDouble({String? texto}) {
    var value = inputString(texto: texto);
    try {
      return double.parse(value);
    } catch (e) {
      return null;
    }
  }
}
