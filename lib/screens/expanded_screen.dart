
import 'package:flutter/material.dart';

class ExpandedScreen extends StatelessWidget {
  const ExpandedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expanded'),
      ),
      body: Center(
        child: Column(
          children: [
            Expanded(
              flex: 2, // коэфицент гибкости
              child: Container(
                color: Colors.blue,
                height: 200,
              ),
            ),
            Expanded(
              flex: 1, // коэфицент гибкости
              child: Container(
                color: Colors.red,
                height: 200,
              ),
            ),
            Expanded(
              flex: 3, // коэфицент гибкости
              child: Container(
                color: Colors.orange,
                height: 200,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
