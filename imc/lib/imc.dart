String calculateIMC(double imc) {
  if (imc < 16) {
    return "Magreza Grave";
  } else if (imc < 17) {
    return "Magreza Morderada";
  } else if (imc < 18.5) {
    return "Magreza leve";
  } else if (imc < 25) {
    return "Saudavel";
  } else if (imc < 30) {
    return "Sobrepeso";
  } else if (imc < 35) {
    return "Obesidade Grau I";
  } else if (imc < 40) {
    return "Obesidade Grau II";
  } else if (imc >= 40) {
    return "Obesidade Grau III";
  } else {
    return "Invalido";
  }
}
