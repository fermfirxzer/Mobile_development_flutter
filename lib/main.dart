import 'package:flutter/material.dart';
import 'page/changing_page.dart';
import 'page/display.dart';
import 'page/main_page.dart';
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
        initialRoute: '/',
        routes: {
          '/': (context) => Homepage(),
          '/ChangePage': (context) => ChangePage(),
          '/WelcomePage': (context) => WelcomePage(),
          '/DisplayPage': (context) => Display(),
        });
  }
}
