import 'package:flutter/material.dart';
class category extends StatefulWidget {
  const category({super.key});

  @override
  State<category> createState() => _categoryState();
}

class _categoryState extends State<category> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Center(child: Text(
          'Category',
          style: TextStyle(color: Colors.white),
        )),
      ),

    );
  }
}
