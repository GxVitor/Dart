import 'package:my_app_testes/my_app_testes.dart' as app;
import 'package:test/test.dart';

void main() {
  test('calculatar Desconto sem Porcentagem', () {
    expect(app.calcularDesconto(1000, 150, false), 850);
  }); 
  
  test('calculatar Desconto sem Porcentagem com o valor zerado', () {
    expect(() => app.calcularDesconto(0, 150, false), throwsA(TypeMatcher<ArgumentError>()));
  });
  
  test('calculatar Desconto com Porcentagem', () {
    expect(app.calcularDesconto(1000, 15, true), 850);
}); 
  test('calculatar Desconto com Desconto Zerado', () {
    expect(() => app.calcularDesconto(1000, 0, true), throwsA(TypeMatcher<ArgumentError>()));
  });
}