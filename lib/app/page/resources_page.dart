import 'package:flutter/material.dart';

class ResourcesPage extends StatelessWidget {
  const ResourcesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('Resources'),
          centerTitle: true,
          backgroundColor: Colors.pink,
        ),
      );
}
