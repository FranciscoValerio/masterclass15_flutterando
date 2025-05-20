import 'package:componentes/src/mockups/button_mockup01.dart';
import 'package:componentes/src/mockups/logo_mockup01.dart';
import 'package:flutter/material.dart';

class Mockup01 extends StatelessWidget {
  const Mockup01({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 100),
            LogoMockup01(height: 120, width: 120),
            SizedBox(height: 50),
            Text(
              'Get your Money\nUnder Control',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Manage your expenses.\nSeamlessly.',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color.fromRGBO(119, 119, 123, 1),
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 120),
            ButtonMockup01(
              backgroundColor: Color.fromRGBO(94, 92, 229, 1),
              text: 'Sign Up with Email ID',
              textColor: Colors.white,
            ),
            SizedBox(height: 20),
            ButtonMockup01(
              backgroundColor: Colors.white,
              text: 'Sign Up with Google',
              textColor: Colors.black,
              urlIcon:
                  'https://img.icons8.com/?size=100&id=17949&format=png&color=000000',
            ),
            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Already have an account?',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                SizedBox(width: 10),
                Text(
                  'Sign In',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    decoration: TextDecoration.underline,
                    decorationColor: Colors.white,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
