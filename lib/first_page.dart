import 'package:flutter/material.dart';
import 'package:flutter_beginner/second_page.dart';

class FirstRoute extends StatelessWidget {
  FirstRoute({super.key});
  String nameText = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Route'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
              TextField(
                onChanged: (text) {
                  nameText = text;
                },
              ),
              ElevatedButton(
                child: const Text('Open route'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => SecondRoute(nameText),
                      fullscreenDialog: true
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}