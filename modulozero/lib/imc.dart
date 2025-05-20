import 'package:modulozero/person.dart';

class Imc {
  final Person person;
  late double imc;

  Imc({required this.person});

  double calculate() {
    imc = person.weight / (person.height * person.height);
    return imc;
  }

  String category() {
    String category = '';
    if (imc < 18.5) {
      category = 'Abaixo do peso: menos de 18.5';
    } else if (imc >= 18.5 && imc <= 24.9) {
      category = 'Peso normal: 18.5 a 24.9';
    } else if (imc >= 25 && imc <= 29.9) {
      category = 'Sobrepeso: 25 a 29.9';
    } else if (imc >= 30 && imc <= 34.9) {
      category = 'Obesidade Grau I: 30 a 34.9';
    } else if (imc >= 35 && imc <= 39.9) {
      category = 'Obesidade Grau II: 35 a 39.9';
    } else if (imc > 40) {
      category = 'Obesidade Grau III: 40 ou mais';
    }

    return category;
  }
}
