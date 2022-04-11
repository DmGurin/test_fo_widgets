import 'package:flutter/material.dart';

class ChoiceChipScreen extends StatefulWidget {
  const ChoiceChipScreen({Key? key}) : super(key: key);

  @override
  State<ChoiceChipScreen> createState() => _ChoiceChipScreenState();
}

class _ChoiceChipScreenState extends State<ChoiceChipScreen> {
  bool _isSelected = false; //создание логического значение выбора, это значение будет false

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Choice Chip'),
      ),
      body: Center(
        child: ChoiceChip(
          avatar: const Icon(Icons.ads_click_outlined),
          label: const Text('Choice Chip'),
          selected: _isSelected, //переменная
          onSelected: (newBoolValue) {  //добавим не выбранное, чтобы иметь возможность изменять значение
            setState(() {  //создадим новое состояние
              _isSelected = newBoolValue; // изменим значение на новое логическое значение
            });
          },
        ),
      ),
    );
  }
}
