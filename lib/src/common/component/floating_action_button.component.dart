import 'package:flutter/material.dart';

class FloatingActionButtonComponent extends StatelessWidget {
  const FloatingActionButtonComponent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(shape: BoxShape.circle, boxShadow: [
        BoxShadow(
          color: Colors.white,
          spreadRadius: 7,
          blurRadius: 1,
        )
      ]),
      child: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.blue,
        shape: const CircleBorder(),
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
