class Card {
  final String number;

  Card({required this.number});

  bool valid() {
    var lastDigit = int.tryParse(number.substring(number.length - 1)) ?? 0;
    var fator = 0;
    for (var i = 0; i < number.length; i++) {
      var value = 0;
      var digit = int.tryParse(number[i]) ?? 0;
      if (i % 2 == 0) {
        value = digit * 2;
      } else {
        value = digit * 1;
      }

      if (value.toString().length > 1) {
        var sum = int.tryParse(value.toString().substring(0, 1)) ?? 0;
        sum += int.tryParse(value.toString().substring(1)) ?? 0;
        value = sum;
      }

      fator += value;
    }

    var module = (fator % 10);

    return module == lastDigit;
  }
}
