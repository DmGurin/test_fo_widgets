

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FlexibleScreen extends StatelessWidget {
  const FlexibleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flexible'),
      ),
      body: Center(
        child: Column(
          children: [
            Flexible(
              fit: FlexFit.tight, // при использовании, высота контейнера уже не учитавается
                child: Container(
                  height: 50, //если убрать высоту активируется flexible гибкость
                  color: Colors.blue,
                ),
            ),
            Flexible(
              flex: 2, //аргумент действует как соотношение определяющее сколько места должен занимать виджет, не работает при имеющейся высоте контейнера
              child: Container(
              height: 110, //если убрать высоту активируется flexible гибкость
              color: Colors.orange,
            ),),
            Flexible( child: Container(
              height: 120, //если убрать высоту активируется flexible гибкость
              color: Colors.red,
            ),)
          ],
        ),
      ),
    );
  }
}
