import 'package:flutter/material.dart';

class PaddingScreen extends StatelessWidget {
  const PaddingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Container(
              color: Colors.red,
              child:  const Padding(
                //padding: EdgeInsets.all(15.0),
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 50,), //отступы по симметричным сторонам, горизонталь или вертикаль
                //padding: EdgeInsets.only( top: 10, bottom: 10, left: 10, right: 10), // для каждой стороны отдельно
                //padding: EdgeInsets.fromLTRB(10, 10, 10, 20), //для проставления отступа left, top, right, bottom
                //padding: EdgeInsets.lerp(EdgeInsets.all(10), EdgeInsets.all(20), 0.5,), //при использовании в последенем значении 0.0 значение будет 10, если 1.0, отступ будет 20, если 0.5, то 15
                child: Text(
                  'PadScr',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ))),
    );
  }
}
