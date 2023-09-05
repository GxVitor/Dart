import 'package:meu_app_tratamenta_error/execption/nome_invalido_execption.dart';
import 'package:meu_app_tratamenta_error/models/aluno.dart';
import 'package:meu_app_tratamenta_error/models/console_utils.dart';

void execute() {
  print("Bem Vindo ou Sistemas de Notas");

  String nome = ConsoleUtils.inputString(texto: "Digite Seu Nome: ");

  if (nome.trim() == "") {
    throw NomeInvalidoExecpion();
  }
  var aluno = Aluno(nome);

  print(aluno.getNome);

  double? nota;
  do {
    nota = ConsoleUtils.inputDouble(texto: "Digite Um Numero ou S para Sair: ");
    if (nota != null) {
      aluno.setNota(nota);
    }
  } while (nota != null);
  print(aluno.getNotas);
  print("A Media do Aluno Foi ${aluno.getMedia}");
  if (aluno.aprovado(7)) {
    print("Aprovado");
  } else {
    print("Reprovado");
  }



 
}
