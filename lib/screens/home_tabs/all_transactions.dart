import 'package:digi_khata/constants.dart';
import 'package:digi_khata/widgets/basic_button.dart';
import 'package:flutter/material.dart';

class AllTransations extends StatelessWidget {
  const AllTransations({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(Icons.arrow_back),
        ),
        title: const Text('All Transactions'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('All Transactions'),
            y20,
            BasicButton(
              text: 'GO BACK',
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
