import 'package:flutter/material.dart';

class LogoMockup01 extends StatelessWidget {
  final double height;
  final double width;
  const LogoMockup01({super.key, required this.height, required this.width});

  @override
  Widget build(BuildContext context) {
    double halfHeight = (height * .9) / 2;
    double halfWidth = (width * .9) / 2;

    return Padding(
      padding: EdgeInsets.all(5),
      child: SizedBox(
        height: height,
        width: width,
        child: Row(
          children: [
            Column(
              children: [
                Container(
                  height: halfHeight,
                  width: halfWidth,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Color.fromRGBO(94, 92, 229, 1),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: ComponentLogo(
                    halfHeight: halfHeight,
                    halfWidth: halfWidth,
                    bottomLeft: Radius.circular(100),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Column(
                children: [
                  ComponentLogo(
                    halfHeight: halfHeight,
                    halfWidth: halfWidth,
                    topRight: Radius.circular(100),
                  ),
                  Container(
                    height: 10,
                    width: halfWidth,
                    color: Color.fromRGBO(94, 92, 229, 1),
                  ),
                  ComponentLogo(
                    halfHeight: halfHeight,
                    halfWidth: halfWidth,
                    bottomLeft: Radius.circular(100),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ComponentLogo extends StatelessWidget {
  final double halfHeight;
  final double halfWidth;
  final Radius bottomLeft;
  final Radius topRight;
  const ComponentLogo({
    super.key,
    required this.halfHeight,
    required this.halfWidth,
    this.bottomLeft = Radius.zero,
    this.topRight = Radius.zero,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: halfHeight,
      width: halfWidth,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: bottomLeft,
          topRight: topRight,
        ),
        color: Color.fromRGBO(94, 92, 229, 1),
      ),
    );
  }
}
