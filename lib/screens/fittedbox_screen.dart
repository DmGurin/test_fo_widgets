



import 'package:flutter/material.dart';

class FittedBoxScreen extends StatelessWidget {
  const FittedBoxScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 150,
          width: 300,
          color: Colors.red,
          padding: const EdgeInsets.all(10),
          child: const FittedBox(child: Text('FittedBox', style: TextStyle(fontSize: 100, color: Colors.white, fontWeight: FontWeight.bold),)),
        ),
      ),
    );
  }
}
