import 'package:flutter/material.dart';

class ButtonMockup01 extends StatelessWidget {
  final String text;
  final Color backgroundColor;
  final Color textColor;
  final double height;
  final String urlIcon;

  const ButtonMockup01({
    super.key,
    required this.text,
    required this.backgroundColor,
    required this.textColor,
    this.height = 60,
    this.urlIcon = '',
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10, right: 10),
      height: height,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Visibility(
            visible: urlIcon.isNotEmpty,
            child: Container(
              margin: EdgeInsets.only(right: 10),
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                image: DecorationImage(image: NetworkImage(urlIcon)),
              ),
            ),
          ),
          Text(
            text,
            style: TextStyle(
              color: textColor,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
