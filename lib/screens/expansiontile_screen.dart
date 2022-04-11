import 'package:flutter/material.dart';

class ExpansionTileScreen extends StatelessWidget {
  const ExpansionTileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ExpansionTile List'),
      ),
      body: const ExpansionTile(
        leading: Icon(Icons.info),
        title: Text('See more'),
        children: [
          ListTile(
            title: Text('First'),
            selected: true,
          ),
          ListTile(
            title: Text('Second'),
            tileColor: Colors.red,
          ),
          ListTile(
            title: Text('Third'),
            textColor: Colors.deepPurple,
          ),
          ListTile(
            title: Text('Fourth'),
            subtitle: Text('subtitle'),
          ),
        ],
      ),
    );
  }
}
