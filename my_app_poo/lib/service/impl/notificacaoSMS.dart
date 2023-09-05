import 'package:my_app_poo/classes/pessoa.dart';
import 'package:my_app_poo/service/notificacao_interface.dart';

class NotificacaoSMS implements NotificacaoInterface {
  @override
  void enviarNotificacao(Pessoa pessoa) {
    print("Enviando um Sms para: ${pessoa.getNome}");
  }
}
