import 'package:my_app_poo/classes/pessoa.dart';
import 'package:my_app_poo/service/notificacao_interface.dart';

class NotificacaoEmail implements NotificacaoInterface {
  @override
  void enviarNotificacao(Pessoa pessoa) {
    print("Enviando um Email para: ${pessoa.getNome}");
  }
}
