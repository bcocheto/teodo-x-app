import 'package:flutter/material.dart';

class PerformancePage extends StatelessWidget {
  const PerformancePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('Performance'),
          centerTitle: true,
          backgroundColor: Colors.indigo,
        ),
      );
}
