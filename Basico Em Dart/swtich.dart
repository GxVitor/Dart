void main() {
  String status = 'Finalizado';

  switch (status) {
    case 'ABRETO':
      print("O Seu Pedio está Abreto");
      break;
    case 'ANDAMENTO':
      print("Seu Pedido Esta em Andamento");
      break;
    case "Finalizado":
      print("Seu Pedido Foi Finalizado");
      break;
    default:
      print("Status não verificado");
  }
}
