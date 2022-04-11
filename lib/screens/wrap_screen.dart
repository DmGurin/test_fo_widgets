import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WrapScreen extends StatelessWidget {
  const WrapScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 200,
          width: 400,
          color: Colors.red,
          child: Wrap(
            direction: Axis.horizontal, //стоит по умолчанию распологая элементы внутри по горизонтали
            //direction: Axis.vertical, //расплогает элементы по вертикали, добавь кнопок и удали к размеры контейнера, чтобы увидеть
            alignment: WrapAlignment.spaceAround,
            runAlignment: WrapAlignment.end, //указывает направление или доступ в котором будет происходить перенос элементов
            verticalDirection: VerticalDirection.up, // также как и в строке, см страницу строки
            spacing: 10, // делает расстояние по горизонтали между виджетами
            runSpacing: 40, // делает расстояние по вертикали между добавляемыми виджетами
            textDirection: TextDirection.rtl, //порядок отображения дочерних элементов слева направо или наоборот как и в строке
            
            children: [
              ElevatedButton(
                onPressed: () {},
                child: const Text('WrapScr 1'),
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text('WrapScr 2'),
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text('WrapScr 3'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
