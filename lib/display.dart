import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:testing_app/provider.dart';

class ScreenDisplay extends StatelessWidget {
  const ScreenDisplay({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Display'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(Provider.of<DropDownProvider>(context).selectedValue),
      ),
    );
  }
}
