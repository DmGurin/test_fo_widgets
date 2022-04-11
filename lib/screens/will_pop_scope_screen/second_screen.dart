
import 'package:flutter/material.dart';

class WillPopScopeSecondScreen extends StatelessWidget {
  const WillPopScopeSecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: Scaffold(
        backgroundColor: Colors.green,
        appBar: AppBar(
          title: const Text('Second screen'),
          leading: IconButton(
            onPressed: (){
              //без прописания возврата через иконку, кнопка возврата по умолчанию работать не будет
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.arrow_back_ios_new),
          ),
        ),
        body: const Center(),
      ),
      onWillPop: () async {
        return false; //внутри ассинхронности мы вернем функцию
      },
    );
  }
}
