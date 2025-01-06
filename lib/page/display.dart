import 'package:flutter/material.dart';

class Display extends StatefulWidget {
  final String? name;
  final int? age;
  const Display({super.key,required this.name,required this.age});

  @override
  State<Display> createState() => _DisplayState();
}

class _DisplayState extends State<Display> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( title: const Text("This is Appbar"),),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Text("Hi ${widget.name} your age is ${widget.age}"),
              ElevatedButton(onPressed: () {}, child: Text("Go to"))
            ],
          ),
        ),
      ),
    );;
  }
}