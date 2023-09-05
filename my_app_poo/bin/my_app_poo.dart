import 'package:my_app_poo/classes/pessoa_fisica.dart';
import 'package:my_app_poo/classes/pessoa_juridica.dart';
import 'package:my_app_poo/emun/tipo_notificacao.dart';
import 'package:my_app_poo/service/enviar_notificacao.dart';

void main(List<String> arguments) {
  var p2 = PessoaFisica("Vitor 2", "Rua Pão", "123",
      tipoNotificacao: TipoNotificacao.EMAIL);

  var pessoacnpj = PessoaJuridica("Luiz", "Rua Adv", "1234",
      tipoNotificacao: TipoNotificacao.SMS);

  var p3 = PessoaFisica("Laura", "Vila dos Peixe", "321");

  print(p2);
  print(pessoacnpj);

  Enviar_Notificacao enviarNotificacao = Enviar_Notificacao();

  enviarNotificacao.notificar(pessoacnpj);
  enviarNotificacao.notificar(p2);
  enviarNotificacao.notificar(p3);
}
