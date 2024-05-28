import 'package:extenso/extenso.dart';
import 'package:test/test.dart';

void main() {
  test('Teste de valores inteiros', () {
    expect(extenso(1), 'um real');
    expect(extenso(21), 'vinte e um reais');
    expect(extenso(105), 'cento e cinco reais');
    expect(extenso(1000), 'um mil reais');
    expect(extenso(1000000), 'um milhão de reais');
    expect(extenso(2000000), 'dois milhões de reais');
    expect(extenso(1000000000), 'um bilhão de reais');
  });

  test('Teste de valores com centavos', () {
    expect(extenso(1.50), 'um real e cinquenta centavos');
    expect(extenso(21.75), 'vinte e um reais e setenta e cinco centavos');
    expect(extenso(105.10), 'cento e cinco reais e dez centavos');
    expect(extenso(30500.01), 'trinta mil, quinhentos reais e um centavo');
    expect(extenso(42322.56), 'quarenta e dois mil, trezentos e vinte e dois reais e cinquenta e seis centavos');
    expect(extenso(1000000.01), 'um milhão de reais e um centavo');
    expect(extenso(1000000.99), 'um milhão de reais e noventa e nove centavos');
    expect(extenso(1450370000.35), 'um bilhão, quatrocentos e cinquenta milhões, trezentos e setenta mil de reais e trinta e cinco centavos');
  });

  test('Teste de valores zero', () {
    expect(extenso(0), 'zero');
  });
}
