import 'package:my_app_poo/classes/pessoa.dart';
import 'package:my_app_poo/emun/tipo_notificacao.dart';
import 'package:my_app_poo/service/notificacao_interface.dart';
import 'package:my_app_poo/service/impl/notificacaoEmail.dart';
import 'package:my_app_poo/service/impl/notificacaoNenhum.dart';
import 'package:my_app_poo/service/impl/notificacaoPushNotification.dart';
import 'package:my_app_poo/service/impl/notificacaoSMS.dart';

class Enviar_Notificacao {
  NotificacaoInterface? notificacao;

  void notificar(Pessoa pessoa) {
    switch (pessoa.getTiponotificacao) {
      case TipoNotificacao.EMAIL:
        notificacao = NotificacaoEmail();
        break;

      case TipoNotificacao.PUSH_NOTIFICATION:
        notificacao = NotificacaoPushNotification();
        break;

      case TipoNotificacao.SMS:
        notificacao = NotificacaoSMS();
        break;

      case TipoNotificacao.NENHUM:
        notificacao = NotificacaoNenhum();
        break;

      default:
        break;
    }
    if (notificacao != null) {
      notificacao!.enviarNotificacao(pessoa);
    } else {
      print("${pessoa.getNome} Sem Tipo de Notificação");
    }
  }
}
