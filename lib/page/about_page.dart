import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
            child: Text("My appbar",
                style: TextStyle(fontSize: 24, color: Colors.white))),
        
      ),
      body: (const Text("This is About Page!")),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            debugPrint("TAB pressed");
          },
          child: const Icon(Icons.exit_to_app)),
    );
  }
}
