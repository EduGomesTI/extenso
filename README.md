# Extenso para Flutter

## O que é?

O **Extenso** é um plugin para Flutter que transforma valores numéricos em palavras por extenso para valores monetários. Simples assim! Se você já se viu querendo exibir valores de uma forma mais amigável ou precisa de uma solução rápida e fácil para isso, o Extenso é a resposta.

## Como usar

É muito fácil começar a usar o Extenso no seu projeto Flutter:

1. **Instalação**:

   Adicione `extenso` como uma dependência em seu arquivo `pubspec.yaml`:

   ```yaml
   dependencies:
     extenso: ^1.0.0
   ```

   Rode o comando:

   ```bash
   flutter pub get
   ```

2. **Utilização**:

Veja como é fácil de usar!

```dart
import 'package:extenso/extenso.dart';

    void main() {
    double valor = 1234.56;
    String valorPorExtenso = extenso(valor);
    print(valorPorExtenso); // "um mil, duzentos e trinta e quatro reais e cinquenta e seis centavos"
    }
```

### Características Principais

- Converte valores numéricos para texto por extenso.
- Fácil de integrar na sua aplicação Flutter.
- Suporte para múltiplas plataformas.

## Contribuições são Bem-vindas! 🛠️

Você encontrou um bug ou tem alguma sugestão? Fique à vontade para abrir issues e fazer pull requests. Vamos fazer esse plugin crescer juntos!

## Licença

Este projeto está licenciado sob a licença MIT - veja o arquivo [LICENSE](LICENSE) para mais detalhes.

## Agradecimentos 🙌

A todos os devs que assim como eu buscam sempre a melhor solução para seus projetos. Vamos codar juntos e tornar o mundo Flutter ainda mais incrível!

---

**By**: [Gerbert Santos](https://github.com/gerbertsantos/)
