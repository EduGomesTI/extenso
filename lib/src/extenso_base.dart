// @dart=2.19
String numeroPorExtenso(int numero) {
  if (numero == 0) return 'zero';
  if (numero == 1) return 'um';

  final unidades = ['', 'um', 'dois', 'três', 'quatro', 'cinco', 'seis', 'sete', 'oito', 'nove'];
  final especiais = ['dez', 'onze', 'doze', 'treze', 'catorze', 'quinze', 'dezesseis', 'dezessete', 'dezoito', 'dezenove'];
  final dezenas = ['', 'dez', 'vinte', 'trinta', 'quarenta', 'cinquenta', 'sessenta', 'setenta', 'oitenta', 'noventa'];
  final centenas = ['', 'cento', 'duzentos', 'trezentos', 'quatrocentos', 'quinhentos', 'seiscentos', 'setecentos', 'oitocentos', 'novecentos'];

  String extenso = '';

  if (numero < 10) {
    extenso = unidades[numero];
  } else if (numero < 20) {
    extenso = especiais[numero - 10];
  } else if (numero < 100) {
    int dezena = numero ~/ 10;
    int unidade = numero % 10;
    extenso = dezenas[dezena];
    if (unidade > 0) {
      extenso += ' e ${unidades[unidade]}';
    }
  } else if (numero < 1000) {
    int centena = numero ~/ 100;
    int resto = numero % 100;
    if (numero == 100) {
      extenso = 'cem';
    } else {
      extenso = centenas[centena];
      if (resto > 0) {
        extenso += ' e ${numeroPorExtenso(resto)}';
      }
    }
  } else if (numero < 1000000) {
    int milhar = numero ~/ 1000;
    int resto = numero % 1000;
    extenso = '${numeroPorExtenso(milhar)} mil';
    if (resto > 0) {
      if (resto < 100) {
        extenso += ' e ${numeroPorExtenso(resto)}';
      } else {
        extenso += ', ${numeroPorExtenso(resto)}';
      }
    }
  } else if (numero < 1000000000) {
    int milhao = numero ~/ 1000000;
    int resto = numero % 1000000;
    extenso = numeroPorExtenso(milhao) + (milhao > 1 ? ' milhões' : ' milhão');
    if (resto > 0) {
      if (resto < 100) {
        extenso += ' e ${numeroPorExtenso(resto)}';
      } else {
        extenso += ', ${numeroPorExtenso(resto)}';
      }
    }
  } else {
    int bilhao = numero ~/ 1000000000;
    int resto = numero % 1000000000;
    extenso = numeroPorExtenso(bilhao) + (bilhao > 1 ? ' bilhões' : ' bilhão');
    if (resto > 0) {
      if (resto < 100) {
        extenso += ' e ${numeroPorExtenso(resto)}';
      } else {
        extenso += ', ${numeroPorExtenso(resto)}';
      }
    }
  }

  return extenso;
}

String extenso(num valor) {
  if (valor == 0) return 'zero';

  int parteInteira = valor.floor();
  int parteDecimal = ((valor - parteInteira) * 100).round();

  String extensoInteiro = numeroPorExtenso(parteInteira);
  String resultado = extensoInteiro +
      (parteInteira == 1
          ? ' real'
          : parteInteira < 1000000
              ? ' reais'
              : ' de reais');

  if (parteDecimal > 0) {
    String extensoCentavos = numeroPorExtenso(parteDecimal);
    resultado += ' e $extensoCentavos${parteDecimal == 1 ? ' centavo' : ' centavos'}';
  }

  return resultado;
}
