main() {
  var animais = ['gato', 'cachorro', 'elefante', 'tigre'];
  for (var i = 0; i < animais.length; i++) {
    print(animais[i]);
  }
  print('-------forEach----------');
  // ignore: unnecessary_set_literal
  animais.forEach((biso) => {print(biso)});

  print("------- For in -------");
  for (var anima in animais) {
    print(anima);
  }
}
