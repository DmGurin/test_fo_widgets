import 'package:flutter/material.dart';

class MediaOrientationScreen extends StatelessWidget {


  const MediaOrientationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //создадим новый экземпляр размера назавем его size  и сделаем равным размеру MediaQuery
    Size size = MediaQuery.of(context)
        .size; //медиа запрос с статичной функцией of использующая контекст сборки из общего  build context override, используя свойство size
    Orientation orientation =
        MediaQuery.of(context).orientation; // переменная ориентации
    double boxSide = size.shortestSide - 100;

    List<Widget> layoutChildren(double boxSide){
      return[
        Container(
            alignment: Alignment.center,
            height: boxSide,
            width: boxSide,
            color: Colors.green,
            child: const Text(
              'data',
              style: TextStyle(
                color: Colors.black,
                fontSize: 50,
              ),
            )),
        Container(
            alignment: Alignment.center,
            height: boxSide,
            width: boxSide,
            color: Colors.red,
            child: const Text(
              'data',
              style: TextStyle(
                color: Colors.black,
                fontSize: 50,
              ),
            )),
      ];
    }

    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Builder(builder: (context) {
            if (orientation.index == Orientation.landscape.index) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: layoutChildren(boxSide),
              );
            } else {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: layoutChildren(boxSide),
              );
            }
          }),
        ),
      ),
    );

  }
}
