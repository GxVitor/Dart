void main() {
  bemvindo();
  double resmulador = simulador(56.5, 47.22);
  print(resmulador);

  print(calcArea(15.60));
}

void bemvindo() {
  String nome = 'Vitor';
  print('Ola ' + nome);
}

double simulador(double valor1, double valor2) {
  double res = valor1 + valor2;
  return res;
}

double calcArea(double raio) => 3.14 * raio * raio;
