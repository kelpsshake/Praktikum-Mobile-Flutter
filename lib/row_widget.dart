import 'package:flutter/material.dart';

class RowWidget extends StatelessWidget {
  const RowWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Widget Row'),
      ),
      body: Row(
        children: const [
          Text('Item 1'),
          Text('Item 2'),
          Text('Item 3'),
        ],
      ),
    );
  }
}