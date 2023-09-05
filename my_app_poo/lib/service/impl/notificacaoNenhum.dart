import 'package:my_app_poo/classes/pessoa.dart';
import 'package:my_app_poo/service/notificacao_interface.dart';

class NotificacaoNenhum implements NotificacaoInterface {
  @override
  void enviarNotificacao(Pessoa pessoa) {
    print("${pessoa.getNome} Sem Tipo de Notificaçaõ");
  }
}
