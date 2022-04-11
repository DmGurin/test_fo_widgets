import 'package:flutter/material.dart';

class PopupMenuButtonScreen extends StatefulWidget {
  const PopupMenuButtonScreen({Key? key}) : super(key: key);

  @override
  State<PopupMenuButtonScreen> createState() => _PopupMenuButtonScreenState();
}

class _PopupMenuButtonScreenState extends State<PopupMenuButtonScreen> {
  String title = 'First Page';
  String firstPage = 'First Page';
  String secondPage = 'Second Page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text(title),
        actions: [
          PopupMenuButton(
            itemBuilder: (context) => [
               PopupMenuItem(
                child: const Text(
                  'firstPage',
                ),
                value: firstPage,
              ),
              PopupMenuItem(
                child: const Text(
                  'secondPage',
                ),
                value: secondPage,
              ),
            ],
            onSelected: (String newValue){
              setState(() {
                title = newValue;
              });
            },
          ),
        ],
      ),
    );
  }
}
