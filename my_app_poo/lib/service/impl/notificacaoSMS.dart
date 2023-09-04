import 'package:my_app_poo/classes/Pessoa.dart';
import 'package:my_app_poo/service/Notificacao_Interface.dart';

class NotificacaoSMS implements NotificacaoInterface {
  @override
  void enviarNotificacao(Pessoa pessoa) {
    print("Enviando um Sms para: ${pessoa.getNome}");
  }
}
