

import 'package:flutter/material.dart';

class StackPositionedScreen extends StatelessWidget {
  const StackPositionedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 400,
          width: 700,
          color: Colors.grey,
          child: Stack(
            //fit: StackFit.loose,
            //fit: StackFit.expand, //заставляет не позиционированный элемент стэка занимать всё пространство
            alignment: Alignment.topRight,
            overflow: Overflow.visible, //делает часть виджета выходящего за пределы стэка видимой(устарел)
            children: [
              Container(
                height: 200,
                width: 200,
                color: Colors.red,
              ),
              Positioned(
                bottom: -20, //элемент будет обрезаться уходя за предалы стэка, необходимо переполнение overflow
                right: 0,
                //height: 150, //при установки высоты и ширины в Positioned размеры контейнера уже не учитываются
                //width: 150,
                child: Container(
                  height: 100,
                  width: 100,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
