import 'package:flutter/material.dart';
import 'package:selector/MulitiProvider.dart';
// import 'package:selector/provider_of.dart';
// import 'package:selector/test.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // shar7 
      //ElSelector and elfar2 benha w ben el comsumer 
      debugShowCheckedModeBanner: false,
      home:MulitiProvider()

    );
  }
}
