import 'package:first_app/modal/items.dart';
import 'package:first_app/widget/card_modal_bottom.dart';
import 'package:flutter/material.dart';

import 'widget/card_body_widget.dart';

void main(List<String> args) {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final List<DataItems> items = [];

  void _handleAddTask(String name) {
    final newItem = DataItems(id: DateTime.now().toString(), name: name);
    setState(() {
      items.add(newItem);
    });
  }

  void _handleDeleteTask(String id) {
    setState(() {
      items.removeWhere((item) => item.id == id);
    });
  }

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
            children: items
                .map((item) => CardBody(
                      item: item,
                      deleteTask: _handleDeleteTask,
                    ))
                .toList(),
          )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(20),
                ),
              ),
              isScrollControlled: true,
              context: context,
              builder: (BuildContext content) {
                return ModalBottom(addTask: _handleAddTask);
              });
        },
        child: const Icon(
          Icons.add,
          size: 40,
        ),
      ),
    );
  }
}
