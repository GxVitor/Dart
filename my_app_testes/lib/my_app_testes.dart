double calcularDesconto(double valor, double desconto, bool percentual) {
  if (valor <= 0) {
    throw ArgumentError("o Valor Não pode ser Zero");
  }
  if (desconto <= 0) {
    throw ArgumentError("o Valor do Desconto Não pode ser Zero");
  }
  if (percentual) {
    return valor - ((valor * desconto) / 100);
  }
  return valor - desconto;
}
