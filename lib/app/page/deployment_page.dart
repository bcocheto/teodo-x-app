import 'package:flutter/material.dart';

class DeploymentPage extends StatelessWidget {
  const DeploymentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('Deployment'),
          centerTitle: true,
          backgroundColor: Colors.teal,
        ),
      );
}
