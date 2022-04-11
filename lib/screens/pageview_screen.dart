
import 'package:flutter/material.dart';

class PageViewScreen extends StatefulWidget {
  const PageViewScreen({Key? key}) : super(key: key);

  @override
  State<PageViewScreen> createState() => _PageViewScreenState();
}

class _PageViewScreenState extends State<PageViewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PageViewScreen'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: PageView(
          children: [
            Container(
              color: Colors.blue,
              child: const Center(
                child: Text('Page 1'),
              ),
            ),
            Container(
              color: Colors.deepPurple,
              child: const Center(
                child: Text('Page 2'),
              ),
            ),
            Container(
              color: Colors.red,
              child: const Center(
                child: Text('Page 3'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
