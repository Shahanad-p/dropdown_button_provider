import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:testing_app/home.dart';
import 'package:testing_app/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => DropDownProvider(),
      child: const MaterialApp(
        home: Screenhome(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
