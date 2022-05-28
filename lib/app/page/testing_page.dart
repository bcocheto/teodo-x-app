import 'package:flutter/material.dart';

class TestingPage extends StatelessWidget {
  const TestingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('Testing & Debugging'),
          centerTitle: true,
          backgroundColor: Colors.red,
        ),
      );
}
