import 'package:flutter/material.dart';

class CardBody extends StatelessWidget {
  const CardBody({
    super.key,
  });

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
            children: const [
              Text('Đi làm',
                  style: TextStyle(
                    fontSize: 20,
                    color: Color(0xff4B4B4B),
                    fontWeight: FontWeight.bold,
                  )),
              Icon(
                Icons.delete_outline,
                size: 25,
                color: Color(0xff4B4B4B),
              ),
            ],
          ),
        ));
  }
}
