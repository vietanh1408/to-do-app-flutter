import 'package:flutter/material.dart';
import 'package:confirm_dialog/confirm_dialog.dart';

class CardBody extends StatelessWidget {
  CardBody({Key? key, required this.item, required this.deleteTask})
      : super(key: key);

  var item;

  final Function deleteTask;

  void _handleDeleteTask(String id) {
    deleteTask(id);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: 70,
        margin: const EdgeInsets.only(
          bottom: 20,
        ),
        decoration: BoxDecoration(
          color: const Color(0xffDFDFDF),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(item.name,
                  style: const TextStyle(
                    fontSize: 20,
                    color: Color(0xff4B4B4B),
                    fontWeight: FontWeight.bold,
                  )),
              InkWell(
                onTap: () async {
                  if (await confirm(
                    context,
                    content: const Text('Do you want to delete this task?'),
                  )) {
                    _handleDeleteTask(item.id);
                  }
                  return;
                },
                child: const Icon(
                  Icons.delete_outline,
                  size: 25,
                  color: Color(0xff4B4B4B),
                ),
              ),
            ],
          ),
        ));
  }
}
