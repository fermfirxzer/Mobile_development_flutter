import 'package:flutter/material.dart';
import 'display.dart';
import 'changing_page.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  String _output = "Welcome!";
  TextEditingController name = TextEditingController();
  TextEditingController age = TextEditingController();
  TextEditingController textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("This is Login Page"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Center(
              child: Column(children: [
                const Text("Please Login!",style: TextStyle(fontSize:16,fontWeight: FontWeight.bold),),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 50,
                  child: TextField(
                    controller: name,
                    obscureText: false,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(), labelText: "Name"),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 50,
                  child: TextField(
                    controller: age,
                    obscureText: false,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(), labelText: "Age"),
                  ),
                ),
                Text('$_output'),
                OutlinedButton(
                  onPressed: () {
                    debugPrint(textEditingController.text);
                    setState(() {
                      _output = "Enjoy My App!";
                    });
                  },
                  child: const Text('Click Here to Change Text!'),
                ),
                ElevatedButton(
                    onPressed: () {
                      String? user_name = name.text.isEmpty?null:name.text;
                      int? user_age = int.tryParse(age.text);
                      // Ensure that user_name is not empty, and user_age is valid
                        Navigator.pushReplacement(
                          context,
                             MaterialPageRoute(builder: (context) => Display(name: user_name, age: user_age)));
                      
                    },
                    child: const Text("Go to Display Page"))
              ]),
            ),
          )
        ],
      ),
    );
  }
}
