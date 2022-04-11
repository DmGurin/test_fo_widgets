

import 'package:flutter/material.dart';

class AnimatedCrossFadeScreen extends StatefulWidget {
  const AnimatedCrossFadeScreen({Key? key}) : super(key: key);

  @override
  State<AnimatedCrossFadeScreen> createState() => _AnimatedCrossFadeScreenState();
}

class _AnimatedCrossFadeScreenState extends State<AnimatedCrossFadeScreen> {
  bool _bool = true; //необходимо создать логическую переменную, заданную как true
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AnimatedCrossFade'),
        actions: [  // создадим текстовую кнопку внутри аппбара
          TextButton(
              onPressed: (){
                setState(() {
                  _bool = !_bool;
                });
              },
              child: const Text('Switch', style: TextStyle(color: Colors.white, fontSize: 20,),),
          ),
        ],
      ),
      body: Center(
        child: AnimatedCrossFade(
          firstChild: Image.network(
              "https://images.pexels.com/photos/2899097/pexels-photo-2899097.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
          width: 250,
          ),
          secondChild: Image.network(
            "https://images.pexels.com/photos/2820884/pexels-photo-2820884.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
            width: 250,
          ),
          crossFadeState: // если bool true то напишем показ первого аргумента, иначе показ второго изображения
          _bool ? CrossFadeState.showFirst : CrossFadeState.showSecond,
          duration: const Duration(seconds: 1),
        ),
      ),
    );
  }
}
