import 'package:my_app_poo/classes/Pessoa.dart';
import 'package:my_app_poo/service/Notificacao_Interface.dart';

class NotificacaoEmail implements NotificacaoInterface {
  @override
  void enviarNotificacao(Pessoa pessoa) {
    print("Enviando um Email para: ${pessoa.getNome}");
  }
}
