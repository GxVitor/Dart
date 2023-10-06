import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:my_app_testes/classes/viacep.dart';
import 'package:my_app_testes/my_app_testes.dart' as app;
import 'package:test/test.dart';

import 'my_app_testes_test.mocks.dart';

@GenerateMocks([MockViaCEP])
void main() {
  test('calculatar Desconto sem Porcentagem', () {
    expect(app.calcularDesconto(1000, 150, false), 850);
  });

  test('calculatar Desconto sem Porcentagem com o valor zerado', () {
    expect(() => app.calcularDesconto(0, 150, false),
        throwsA(TypeMatcher<ArgumentError>()));
  });

  test('calculatar Desconto com Porcentagem', () {
    expect(app.calcularDesconto(1000, 15, true), 850);
  });
  test('calculatar Desconto com Desconto Zerado', () {
    expect(() => app.calcularDesconto(1000, 0, true),
        throwsA(TypeMatcher<ArgumentError>()));
  });

  group('Calcula o Valor do Protudo com Desconto: ', () {
    var valueToTest = {
      {"Valor": 1000, "Desconto": 150, "Percentual": false}: 850,
      {"Valor": 1000, "Desconto": 15, "Percentual": true}: 850
    };
    valueToTest.forEach((value, expected) {
      test('$value: $expected', () {
        expect(
            app.calcularDesconto(
                double.parse(value["Valor"].toString()),
                double.parse(value["Desconto"].toString()),
                value["Percentual"] == true),
            equals(expected));
      });
    });
  });

  test('Teste de Função Upcase', () {
    expect(app.VoltarUpCase("vitor"), "VITOR");
  });

  test("Retorno Cep", () async {
    MockMockViaCEP mockMockViaCEP = MockMockViaCEP();

    when(mockMockViaCEP.retornarCEP("01001000"))
        .thenAnswer((realInvocation) => Future.value({
              "cep": "01001-000",
              "logradouro": "Praça da Sé",
              "complemento": "lado ímpar",
              "bairro": "Sé",
              "localidade": "São Paulo",
              "uf": "SP",
              "ibge": "3550308",
              "gia": "1004",
              "ddd": "11",
              "siafi": "7107"
            }));

    var body = await mockMockViaCEP.retornarCEP("01001000");
    expect(body["bairro"], "Sé");
  });
}

class MockViaCEP extends Mock implements ViaCep {}
