import 'package:componentes/src/mockups/mockup_01.dart';
import 'package:componentes/src/mockups/tinder/mockup_tinder.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Componentes')),
      body: Center(
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Mockup01()),
                );
              },
              child: Text('Mockup 01'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MockupTinder()),
                );
              },
              child: Text('Mockup Tinder'),
            ),
          ],
        ),
      ),
    );
  }
}
