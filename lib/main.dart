import 'package:flutter/material.dart';

import 'widget/card_body_widget.dart';

void main(List<String> args) {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'To do list',
          style: TextStyle(fontSize: 40),
        ),
        backgroundColor: Colors.amber[800],
      ),
      body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(
            horizontal: 32,
            vertical: 20,
          ),
          child: Column(
            children: const [
              CardBody(),
              CardBody(),
              CardBody(),
              CardBody(),
              CardBody(),
              CardBody(),
              CardBody(),
              CardBody(),
            ],
          )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('on press');
        },
        child: const Icon(
          Icons.add,
          size: 40,
        ),
      ),
    );
  }
}
