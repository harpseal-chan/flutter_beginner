import 'package:flutter/material.dart';
import 'package:flutter_beginner/third_page.dart';

class SecondRoute extends StatelessWidget {
  const SecondRoute(this.name, {super.key});
  final String name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Route'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('img/harpseal_icon.jpg'),
            Text(name,
            style: const TextStyle(
              fontSize: 30,
            ),),
            ElevatedButton(
              onPressed: () {
                // Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ThirdRoute(),
                      fullscreenDialog: true
                  ),
                );
              },
              child: const Text('Third route'),
            ),
          ],
        ),
      ),
    );
  }
}