// ignore_for_file: file_names

import 'package:my_app_poo/emun/tipo_notificacao.dart';

abstract class Pessoa {
  Pessoa(String nome, String endereco,
      {TipoNotificacao tipoNotificacao = TipoNotificacao.NENHUM}) {
    _nome = nome;
    _endereco = endereco;
    _tipoNotificacao = tipoNotificacao;
  }

  String _nome = "";
  String _endereco = "";
  String _email = "";
  String _celular = "";
  String _token = "";
  TipoNotificacao _tipoNotificacao = TipoNotificacao.NENHUM;

//Set da Class
  set setNome(String nome) => _nome = nome;
  set setEndereco(String endereco) => _endereco = endereco;
  set setTipoNotificacao(TipoNotificacao tipoNotificacao) =>
      _tipoNotificacao = tipoNotificacao;
  set setEmail(String email) => _email = email;
  set setCelular(String celular) => _celular = celular;
  set setToken(String token) => _token = token;

//Get da class
  String get getNome => _nome;
  String get getEndereco => _endereco;
  String get getEmail => _email;
  String get getCelular => _celular;
  String get getToken => _token;
  TipoNotificacao get getTiponotificacao => _tipoNotificacao;

  @override
  String toString() {
    return {
      "Nome": _nome,
      "Endereco": _endereco,
      "TipoNotificacao": _tipoNotificacao
    }.toString();
  }
}
