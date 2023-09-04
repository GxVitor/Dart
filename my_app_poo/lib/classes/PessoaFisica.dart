import 'package:my_app_poo/classes/Pessoa.dart';
import 'package:my_app_poo/emun/tipo_notificacao.dart';

class PessoaFisica extends Pessoa {
  PessoaFisica(String nome, String endereco, String cpf,
      {TipoNotificacao tipoNotificacao = TipoNotificacao.NENHUM})
      : super(nome, endereco, tipoNotificacao: tipoNotificacao) {
    _cpf = cpf;
  }

  String _cpf = "";

  set setCpf(String cpf) => _cpf = cpf;

  String get getCpf => _cpf;

  @override
  String toString() {
    // Aqui é oque vai ser printado quando pedir para printar a class
    return {
      "Nome": super.getNome,
      "Endereco": super.getEndereco,
      "Cpf": _cpf,
      "TipoNotificacao": getTiponotificacao
    }.toString();
  }
}
