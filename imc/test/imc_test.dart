import 'package:imc/imc.dart';
import 'package:test/test.dart';

void main() {
  test('calculateIMC', () {
    expect(calculateIMC(26), "Sobrepeso");
  });
}
