

import 'package:flutter/material.dart';
import 'package:test_fo_widgets/screens/will_pop_scope_screen/second_screen.dart';

class WillPopScopeScreen extends StatelessWidget {
  const WillPopScopeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Откл. кнопки назад телефоне'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const WillPopScopeSecondScreen()));
          },
          child: const Text('WillPopScope'),
        ),
      ),
    );
  }
}
