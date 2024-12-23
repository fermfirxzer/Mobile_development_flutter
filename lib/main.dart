import 'package:flutter/material.dart';
import 'package:flutter_application_1/page/main_page.dart';
import './page/welcome_page.dart';

void main() {
  runApp(const Myapp()); // This is where you start the app
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          useMaterial3: true,
          appBarTheme: const AppBarTheme(color: Colors.red),
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        ),
        home:const Homepage());
  }
}
