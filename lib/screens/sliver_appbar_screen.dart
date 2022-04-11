import 'package:flutter/material.dart';

class SliverAppBarScreen extends StatelessWidget {
  const SliverAppBarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            pinned: false,
            floating: true, //при использованиее snap, floating true
            snap: false,
            title: Text('SliverAppBar'),
            expandedHeight: 100, //высота гибкого пространства
            flexibleSpace: FlexibleSpaceBar(
              title: Text('Map'), // заголовок гибкого пространства
              centerTitle: true,
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                const Text(
                  'Sliver',
                  style: TextStyle(fontSize: 500),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
