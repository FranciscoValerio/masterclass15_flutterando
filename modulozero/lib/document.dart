class Document {
  final String document;

  Document({required this.document});

  bool valid() {
    int firstDigit = _calculeDigit(document: document.substring(0, 9));
    int secondDigit = _calculeDigit(document: document.substring(0, 10));

    var digits = document.substring(document.length - 2);

    return digits == '$firstDigit$secondDigit';
  }

  int _calculeDigit({required String document}) {
    int fator = 0;
    int multiplier = 2;
    int result = 0;

    for (var i = 0; i < document.length; i++) {
      fator +=
          (int.tryParse(document[document.length - (i + 1)]) ?? 0) * multiplier;
      multiplier++;
    }

    for (var i = 0; i < document.length; i++) {
      result += int.tryParse(document[i]) ?? 0 * fator;
      multiplier++;
    }

    var module = result % 11;

    return module < 2 ? 0 : 11 - module;
  }
}
