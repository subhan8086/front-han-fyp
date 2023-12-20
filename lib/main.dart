import 'package:flutter/material.dart';
import 'package:fyp_pro/screen/splash.dart';

void main() {

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp( debugShowCheckedModeBanner: false,
      title: 'Flutter FYP',
      theme: ThemeData(
       // brightness: Brightness.dark,
primarySwatch: Colors.purple,
      // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),

      ),
      home: const splash(),
    );
  }
}

