import 'package:flutter/material.dart';

class NetworkImageScreen extends StatefulWidget {
  const NetworkImageScreen({Key? key}) : super(key: key);

  @override
  _NetworkImageScreenState createState() => _NetworkImageScreenState();
}

class _NetworkImageScreenState extends State<NetworkImageScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // Design of the application
        appBar: AppBar(
            title: const Text("Slider + Network Image"),
            backgroundColor: Colors.red),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              // Image.network(src)
              child: Image.network(
                  "https://images.pexels.com/photos/213780/pexels-photo-213780.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.network(
                  "https://images.pexels.com/photos/2899097/pexels-photo-2899097.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.network(
                  "https://images.pexels.com/photos/2820884/pexels-photo-2820884.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
            )
          ]),
        ),
      ),
    );
  }
}
