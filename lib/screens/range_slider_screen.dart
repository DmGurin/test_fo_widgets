

import 'package:flutter/material.dart';

class RangeSliderScreen extends StatefulWidget {
  const RangeSliderScreen({Key? key}) : super(key: key);

  @override
  State<RangeSliderScreen> createState() => _RangeSliderScreenState();
}

class _RangeSliderScreenState extends State<RangeSliderScreen> {
  RangeValues values = const RangeValues(0.1, 0.5); //создадим переменную постоянного диапазона
  @override
  Widget build(BuildContext context) {
    RangeLabels labels = RangeLabels( //создадим переменную метки диапазона, для использования самой метки
      values.start.toString(), //метки диапазона начала
      values.end.toString(), //метки конца даипазона
    );
    return Scaffold(
      appBar: AppBar(
        title: const Text('Range Slider'),
      ),
      body: Center(
        child: RangeSlider(
          values: values, //первые значения аргумента, которые являются значением диапазона
          divisions: 8, // деление ползунка виджета
          labels: labels, // метки, которые являются метками переменной диапазона
          onChanged: (newValues){
            setState(() { //установим в состояние со значением, новый набор значений диапазона
              values = newValues; // которое будет равным новому значению
            });
          },
        ),
      ),
    );
  }
}
