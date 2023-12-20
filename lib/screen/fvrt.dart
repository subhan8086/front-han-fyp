import 'package:flutter/material.dart';

class fvrt extends StatefulWidget {
  const fvrt({super.key});

  @override
  State<fvrt> createState() => _fvrtState();
}

class _fvrtState extends State<fvrt> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      backgroundColor: Colors.purple,
      title: Center(
          child: Text('Favorite ',
            style: TextStyle(color: Colors.white),)),),);
  }
}
