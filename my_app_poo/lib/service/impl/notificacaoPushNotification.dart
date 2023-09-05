import 'package:my_app_poo/classes/pessoa.dart';
import 'package:my_app_poo/service/notificacao_interface.dart';

class NotificacaoPushNotification implements NotificacaoInterface {
  @override
  void enviarNotificacao(Pessoa pessoa) {
    print("Enviando Push Notificação para: ${pessoa.getNome}");
  }
}
