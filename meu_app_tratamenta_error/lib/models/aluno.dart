class Aluno {
  String _nome = "";
  final List<double> _notas = [];

  Aluno(String nome) {
    _nome = nome;
  }
//Metodos Set nome, e notas
  set setNome(String nome) => _nome = nome;
  void setNota(double nota) {
    _notas.add(nota);
  }

//Get nome e Notas
  String get getNome => _nome;
  List<double> get getNotas => _notas;
  //Puxar a nota to aluno e faz a media
  double get getMedia {
    var totalNotas = 0.0;
    for (var nota in _notas) {
      totalNotas = totalNotas + nota;
    }
    var media = totalNotas / _notas.length;
    return media.isNaN ? 0 : media;
  }

  bool aprovado(double notaCorte) => getMedia >= notaCorte;
}
