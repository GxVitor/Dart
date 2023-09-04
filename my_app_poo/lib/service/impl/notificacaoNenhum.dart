import 'package:my_app_poo/classes/Pessoa.dart';
import 'package:my_app_poo/service/Notificacao_Interface.dart';

class NotificacaoNenhum implements NotificacaoInterface {
  @override
  void enviarNotificacao(Pessoa pessoa) {
    print("${pessoa.getNome} Sem Tipo de Notificaçaõ");
  }
}
