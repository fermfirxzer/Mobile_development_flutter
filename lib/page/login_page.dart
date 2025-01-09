import 'package:flutter/material.dart';
import 'package:flutter_application_1/page/main_page.dart';
import 'display_page.dart';
import 'changing_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String _output = "Welcome!";
  TextEditingController name = TextEditingController();
  TextEditingController password = TextEditingController();
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
                const Text(
                  "Please Login!",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
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
                    controller: password,
                    obscureText: true,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(), labelText: "Password"),
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
                      String? user_name = name.text.isEmpty ? null : name.text;
                      String? user_password =
                          password.text.isEmpty ? null : password.text;
                      // Ensure that user_name is not empty, and user_age is valid
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  MainPage(username: user_name!)));
                    },
                    child: const Text("Login"))
              ]),
            ),
          )
        ],
      ),
    );
  }
}
