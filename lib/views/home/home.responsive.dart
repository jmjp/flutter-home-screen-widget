import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class Home extends HookWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Column(
        children: [
          ElevatedButton(onPressed: () {}, child: Text("Botao")),
          TextField(),
          Chip(label: Text("Joaozera")),
          CircularProgressIndicator()
        ],
      ),
    );
  }
}
