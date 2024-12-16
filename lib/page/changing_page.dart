import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';
class ChangingPage extends StatefulWidget {
  const ChangingPage({super.key});

  @override
  State<ChangingPage> createState() => _ChangingPageState();
}

class _ChangingPageState extends State<ChangingPage> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [ElevatedButton(
          onPressed: () {
            // Navigate to the ChangingPage
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Myapp()),
            );
          },
          child: const Text('Go to Changing Page'),
        ),],
    );
  }
}