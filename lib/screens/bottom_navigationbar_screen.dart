

import 'package:flutter/material.dart';

class BottomNavigationBarScreen extends StatefulWidget {
  const BottomNavigationBarScreen({Key? key}) : super(key: key);

  @override
  State<BottomNavigationBarScreen> createState() => _BottomNavigationBarScreenState();
}

class _BottomNavigationBarScreenState extends State<BottomNavigationBarScreen> {
  @override
  Widget build(BuildContext context) {
    int _currentIndex = 0; //добавим текущий индекс, чтобы знать на какой странице мы находимся
    List<Widget> body = const [ //создадим список значков тела навигационного бара
      Icon(Icons.home),
      Icon(Icons.menu),
      Icon(Icons.person),
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text('BottomNavigationBar'),
      ),
      body: Center(
        child: body[_currentIndex], // добим тело, которое является списком виджетов
      ),
      bottomNavigationBar: BottomNavigationBar( //добавим виджет нижней панели навигации
        currentIndex: _currentIndex, // для этого укажем текущий индекс страницы, который будет вызываться для текущей переменной индекса страницы
        onTap: (int newIndex){ //когда мы нажмем на иконку, это даст нам новый индекс
          setState(() {
            _currentIndex = newIndex; //обозначим новый индекс, сделав его равным текущему индексу
          });
        },
        items: const [ // постоянный список элементов нижней панели навигации
          BottomNavigationBarItem(
             label: 'Home', // метка элемента
              icon: Icon(Icons.home), //иконка элемента
          ),
          BottomNavigationBarItem(
            label: 'Menu',
            icon: Icon(Icons.menu),),
          BottomNavigationBarItem(
            label: 'Person',
            icon: Icon(Icons.person),),
        ],
      ),
    );
  }
}
