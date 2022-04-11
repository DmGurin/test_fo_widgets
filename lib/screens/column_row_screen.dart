import 'package:flutter/material.dart';

class ColumnRowScreen extends StatelessWidget {
  const ColumnRowScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 200,
          color: Colors.red,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            // минимальный или максималиный размер для строки по горизонтали, для колонки по вертикали
            //mainAxisAlignment: MainAxisAlignment.center, //по центру
            //mainAxisAlignment: MainAxisAlignment.spaceBetween, //расстояние между
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            //расстояние вокруг
            crossAxisAlignment: CrossAxisAlignment.start,
            //чтение по умолчанию идет сверху вниз
            verticalDirection: VerticalDirection.up,
            //при установки вертикального направления вверх, начало чтения перемещается сверху, и читается снизу вверх, см строка выше
            textDirection: TextDirection.rtl,
            // меняет порядок начала чтения дочерних элементов справа на лево, 1 элемент, будет последним
            children: [
              ElevatedButton(
                onPressed: () {},
                child: const Text('RowScr 1'),
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text('RowScr 2'),
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text('RowScr 3'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
