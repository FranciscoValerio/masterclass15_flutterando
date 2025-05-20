import 'package:flutter/material.dart';

class MockupTinder extends StatelessWidget {
  const MockupTinder({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.topRight,
          colors: [Color(0xffe95272), Color(0xffed7263)],
        ),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(right: 10),
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    'https://img.icons8.com/?size=100&id=118644&format=png&color=FFFFFF',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
