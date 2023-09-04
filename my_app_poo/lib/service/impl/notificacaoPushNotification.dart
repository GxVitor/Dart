import 'package:my_app_poo/classes/Pessoa.dart';
import 'package:my_app_poo/service/Notificacao_Interface.dart';

class NotificacaoPushNotification implements NotificacaoInterface {
  @override
  void enviarNotificacao(Pessoa pessoa) {
    print("Enviando Push Notificação para: ${pessoa.getNome}");
  }
}
