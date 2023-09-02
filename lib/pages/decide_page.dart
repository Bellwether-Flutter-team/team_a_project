import 'package:flutter/material.dart';

class DecidePage extends StatelessWidget {
  const DecidePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("decidePage"),
        backgroundColor: Theme.of(context).highlightColor,
      ),
      body: const Center(),
    );
  }
}
