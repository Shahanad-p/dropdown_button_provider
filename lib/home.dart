import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:testing_app/display.dart';
import 'package:testing_app/provider.dart';

class Screenhome extends StatelessWidget {
  const Screenhome({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HOME'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer<DropDownProvider>(
              builder: (context, value, child) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    DropdownButton<String>(
                      value: value.selectedValue,
                      onChanged: (String? newValue) {
                        if (newValue != null) {
                          value.setSelectedValue(newValue);
                        }
                      },
                      items: <String>['Option1', 'Option2', 'Option3']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ],
                );
              },
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ScreenDisplay(),
                  ),
                );
              },
              child: const Text('Click'),
            )
          ],
        ),
      ),
    );
  }
}
