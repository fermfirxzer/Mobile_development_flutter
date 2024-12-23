import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  String _output = "First Text!";
  TextEditingController textEditingController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("This is Appbar"),
      ),
      body:  Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Column(children: [
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 50,
                child: TextField(
                  controller: textEditingController,
                  obscureText: false,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), labelText: "Volt"),
                ),
              ),
              Text('$_output'),
              OutlinedButton(
                  onPressed: () {
                    debugPrint(textEditingController.text);
                    setState(() {

                    _output = "Text Change!";
                    });
                  },
                  child: Text('Click Here to Change Text!'),
              ),
            ]),
          )
        ],
      ),
    );
  }
}
