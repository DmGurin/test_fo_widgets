import 'package:flutter/material.dart';

class CenterScreen extends StatelessWidget {
  const CenterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          // heightFactor: 2, //коэфицент высоты
          // widthFactor: 1,  //коэфицент ширины
          child: Container(
              //color: Colors.blue, // не будет работать если есть в decoration
              padding: const EdgeInsets.all(8),
              //constraints: const BoxConstraints.expand(),
              //ограничение, позволяет контейнеру занимать всю доступную ширину и высоту
              //constraints: const BoxConstraints(minWidth: 100, maxWidth: 150),
              // контейнер имея мин ширину 100, не изменится, но при установки макс ширины 150, текст перенесётся на строку ниже, так как текст больше 150
              alignment: Alignment.center,
              height: 200,
              width: 200,
              //не будет работать при использовании ограничения выше
              //transform: Matrix4.rotationZ(0.5), //поворот контейнера на 30 градусов
              decoration: BoxDecoration(
                //color: Colors.blue,
                border: Border.all(
                  color: Colors.black,
                  width: 2,
                  style: BorderStyle.solid, //стиль сплошной линии
                ),
                // borderRadius: const BorderRadius.all(
                //   Radius.circular(20),
                // ),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 2,
                    spreadRadius: 4,
                  )
                ],
                gradient: const LinearGradient(
                    begin: Alignment.bottomLeft,
                    end: Alignment.topRight,
                    colors: [
                      Colors.blue,
                      Colors.white,
                    ]),
                shape: BoxShape
                    .circle, //придает форму круга, требует отключения радиуса скругления
              ),
              child: const Text(
                'CenterScreen Container',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ))),
    );
  }
}
