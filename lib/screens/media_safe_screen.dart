import 'package:flutter/material.dart';

class MediaSafeScreen extends StatelessWidget {
  const MediaSafeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //создадим новый экземпляр размера назавем его size  и сделаем равным размеру MediaQuery
    Size size = MediaQuery.of(context)
        .size; //медиа запрос с статичной функцией of использующая контекст сборки из общего  build context override, используя свойство size
    Orientation orientation = MediaQuery.of(context).orientation; // переменная ориентации
    return Scaffold(
      body: Center(
        child: Container(
          width: size.shortestSide, // размер самой короткой стороны экрана, берется от ширины
          height: size.shortestSide,
          color: Colors.red,
          // child: Row( //child of Container
          //   children: [
          //     Container(
          //       width: size.width/2, //ширина экрана поделенная на 2
          //       height: size.width/2, // высота экрана поделенная на 2
          //       color: Colors.red,
          //     ),
          //     Container(
          //       width: size.width/2,
          //       height: size.width/2,
          //       color: Colors.green,
          //     ),
          //   ],
          // )
        ),
      ),
    );
  }
}
