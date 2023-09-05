class NomeInvalidoExecpion implements Exception {
  String error() => "Nome Invalido";

  @override
  String toString() {
    return "NomeInvalidoExecpion: ${error()}";
  }
  
}
