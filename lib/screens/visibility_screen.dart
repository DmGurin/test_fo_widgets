import 'package:flutter/material.dart';

class VisibilityScreen extends StatefulWidget {
  const VisibilityScreen({Key? key}) : super(key: key);

  @override
  State<VisibilityScreen> createState() => _VisibilityScreenState();
}

class _VisibilityScreenState extends State<VisibilityScreen> {
  bool _isVisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Visibility'),
        actions: [
          TextButton(
            onPressed: (){
              setState(() {
                _isVisible = !_isVisible;
              });
            },
            child: const Text('Нажми', style: TextStyle(color: Colors.white, fontSize: 20),),
          ),
        ],
      ),
      body: SizedBox(
        width: double.infinity,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.network(
                "https://imageup.ru/img208/3883491/sun.png",
                height: 100,
              ),
              Visibility(
                visible: _isVisible,
                child: Image.network(
                    "https://images.pexels.com/photos/2899097/pexels-photo-2899097.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
              ),
              Image.network(
                "https://imageup.ru/img208/3883491/sun.png",
                height: 100,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
