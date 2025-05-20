import 'package:modulozero/crypto.dart';
import 'package:modulozero/dotenv.dart';
import 'package:modulozero/fibonacci.dart';
import 'package:modulozero/imc.dart';
import 'package:modulozero/person.dart';
import 'package:modulozero/rule_of_three.dart';
import 'package:modulozero/card.dart';
import 'package:modulozero/document.dart';

void main() async {
  Person person = Person(height: 1.85, weight: 115.00, document: '07070234910');

  print('------------------------------------');

  Imc imc = Imc(person: person);
  imc.calculate();

  print(
    'Altura: ${person.height} \nPeso: ${person.weight} \nIMC calculado: ${imc.imc.toStringAsFixed(1)} \n${imc.category()}',
  );

  print('------------------------------------');
  Fibonacci fibonacci = Fibonacci(quantity: 10);
  print('Fibonacci: ${fibonacci.get()}');

  print('------------------------------------');
  RuleOfThree rule = RuleOfThree(
    value01: 10,
    value02: 100,
    value03: 7,
    /*value04: 70,*/
  );

  print(
    'Regra de 3 \nX * 70 = 100 * 7 \nResultado = ${rule.calculate()?.toStringAsFixed(2)}',
  );

  print('------------------------------------');
  Document document = Document(document: person.document);

  if (document.valid()) {
    print('CPF ${person.document}: Válido');
  } else {
    print('CPF ${person.document}: Inválido');
  }

  print('------------------------------------');
  Card card1 = Card(number: '5419825003461210');
  Card card2 = Card(number: '4916641859369080');

  print('Mod10');

  if (card1.valid()) {
    print('Cartão ${card1.number}: Válido');
  } else {
    print('Cartão ${card1.number}: Inválido');
  }

  if (card2.valid()) {
    print('Cartão ${card2.number}: Válido');
  } else {
    print('Cartão ${card2.number}: Inválido');
  }

  print('------------------------------------');
  crypto();
  print('------------------------------------');
  dotenv();
  print('------------------------------------');
}
