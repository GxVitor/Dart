import 'package:my_app_poo/classes/Pessoa.dart';
import 'package:my_app_poo/emun/tipo_notificacao.dart';

class PessoaJuridica extends Pessoa {
  PessoaJuridica(String nome, String endereco, String cnpj,
      {TipoNotificacao tipoNotificacao = TipoNotificacao.NENHUM})
      : super(nome, endereco, tipoNotificacao: tipoNotificacao) {
    _cnpj = _cnpj;
  }

  String _cnpj = "";

  set setCnpj(String cnpj) => _cnpj = cnpj;
  String get getCnpj => _cnpj;

  @override
  String toString() {
    // Aqui é oque vai ser printado quando pedir para printar a class
    return {
      "Nome": getNome,
      "Endereco": getEndereco,
      "CNPJ": _cnpj,
      "TipoNotificacao": getTiponotificacao
    }.toString();
  }
}
