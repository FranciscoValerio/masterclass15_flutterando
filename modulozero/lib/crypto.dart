import 'dart:math';

void crypto() {
  /*
Cifra de Vigenère é uma criptografia simples usada para embaralhar textos. Valores que não seja letras NÃO SÃO TRANSFORMADOS.

Crie uma classe que execute 3 regras de negócio relacionado a criptografia:

A - Gerador de Key randômica.
B - Encode (Retorne o texto criptografado)
C - Decode (Retorne o texto descriptografado).

Obs: Use apenas valores maiúsculos. Certifique-se disso! 

A. Algorítimo para Key:
Para executar o encode e decode é necessário ter uma chave que tenha valores randômicos mas que tenha a mesma quantidade de caracteres do texto a ser criptografado.

B. Encode:
Passo 1: Receba a o texto a ser criptografado e a chave em questão.
Passo 2: deve-se somar o charCode de cada letra do texto e da key em suas respectivas posições e dividir por 26. O RESTO dessa divisão deve ser somado com o CharCode da letra A.
Passo 3: O resultado da soma anterior é o novo char.

Lembre-se: Valores não alfabetos não devem ser transformados.

C. Decode:
Passo 1: Receba a o texto criptografado e a chave.
Passo 2: deve-se subtrair o charCode de cada letra do texto e da key em suas respectivas posições somando o resultado com 26. O resultado deve ser dividido por 26. O RESTO dessa divisão deve ser somado com o CharCode da letra A.
Passo 3: O resultado da soma anterior é o char descriptografado.
*/
  String text = 'FRANCISCO';
  Crypto crypto = Crypto();
  var key = crypto.genKey(text);
  var encoded = crypto.encode(text: text, key: key);
  var decoded = crypto.decode(text: encoded, key: key);

  print('Cifra de Vigenère');
  print(
    'Palavra: $text \nCodificada: $encoded\nKey: $key \nDecodificada: $decoded',
  );
}

class Crypto {
  static final _random = Random();
  static const _alphabetSize = 26;
  static const _asciiA = 65;

  String genKey(String text) {
    final key = StringBuffer();
    for (int i = 0; i < text.length; i++) {
      if (_isLetter(text[i])) {
        key.writeCharCode(_asciiA + _random.nextInt(_alphabetSize));
      } else {
        key.write(text[i]); // mantém símbolos e espaços
      }
    }
    return key.toString();
  }

  String encode({required String text, required String key}) {
    text = text.toUpperCase();
    key = key.toUpperCase();
    final encoded = StringBuffer();

    if (text.length == key.length) {
      for (var i = 0; i < text.length; i++) {
        final charText = text[i];
        final charKey = key[i];

        if (_isLetter(charText)) {
          int code =
              ((charText.codeUnitAt(0) + charKey.codeUnitAt(0)) %
                  _alphabetSize) +
              _asciiA;
          encoded.writeCharCode(code);
        } else {
          encoded.write(charText); // mantém símbolos e espaços
        }
      }
    }

    return encoded.toString();
  }

  String decode({required String text, required String key}) {
    text = text.toUpperCase();
    key = key.toUpperCase();
    final decoded = StringBuffer();

    if (text.length == key.length) {
      for (var i = 0; i < text.length; i++) {
        final charText = text[i];
        final charKey = key[i];

        if (_isLetter(charText)) {
          int code =
              (((charText.codeUnitAt(0) - charKey.codeUnitAt(0)) +
                      _alphabetSize) %
                  _alphabetSize) +
              _asciiA;
          decoded.writeCharCode(code);
        } else {
          decoded.write(charText); // mantém símbolos e espaços;
        }
      }
    }

    return decoded.toString();
  }

  static bool _isLetter(String c) {
    final code = c.codeUnitAt(0);
    return (code >= _asciiA && code <= _asciiA + _alphabetSize - 1);
  }
}
