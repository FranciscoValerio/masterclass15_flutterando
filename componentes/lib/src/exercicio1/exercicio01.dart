import 'package:flutter/material.dart';

class Exercicio01 extends StatelessWidget {
  const Exercicio01({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Exercício 01')),
      body: Stack(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 2),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Field(title: 'First Name:'),
                  Field(title: 'Last Name:'),
                  Row(
                    children: [
                      RadioMC(title: 'Male'),
                      const SizedBox(width: 10),
                      RadioMC(title: 'Female'),
                    ],
                  ),
                  Field(title: 'Employee ID:'),
                  Field(title: 'Designation:'),
                  Field(title: 'Phone Number:'),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      border: Border.all(color: Colors.black, width: 1),
                      borderRadius: BorderRadius.circular(3),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(5),
                      child: Text('Submit'),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 20,
            top: 0,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 6),
              color: Colors.white,
              child: Text("Employee Details"),
            ),
          ),
        ],
      ),
    );
  }
}

class Field extends StatelessWidget {
  final String title;
  const Field({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10, bottom: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(title),
          const SizedBox(width: 10),
          Container(
            height: 30,
            width: 300,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 1),
              borderRadius: BorderRadius.circular(3),
            ),
          ),
        ],
      ),
    );
  }
}

class RadioMC extends StatelessWidget {
  final String title;
  const RadioMC({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10, bottom: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 15,
            width: 15,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 1),
              borderRadius: BorderRadius.circular(50),
            ),
          ),
          const SizedBox(width: 10),
          Text(title),
        ],
      ),
    );
  }
}
