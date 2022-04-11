import 'package:flutter/material.dart';

class ShowModalBottomSheetScreen extends StatelessWidget {
  const ShowModalBottomSheetScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ShowModalBottomSheetScreen'),
      ),
      body:  Center(
        child: ElevatedButton(
          child: const Text('Model Bottom Sheet'),
          onPressed: (){ //при нажатии на кнопку, перейдем на виджет показа нижней модели
            showModalBottomSheet(
              context: context, // потребуется котекст
              builder: (BuildContext context){ // и потребуется строитель
                return SizedBox( // строитель будет возвращать sizedBox
                  height: 250,
                  child: Center(
                    child: ElevatedButton(
                      onPressed: (){
                        Navigator.pop(context);
                      }, child: const Text('Close'),
                    ),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
