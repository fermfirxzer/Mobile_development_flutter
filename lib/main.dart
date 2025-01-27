import 'package:flutter/material.dart';
import 'page/changing_page.dart';
import 'page/login_page.dart';
import 'page/profile_page.dart';
import 'page/list_view.dart';
import 'page/my_futurebuilder_page.dart';
import 'page/http_page.dart';
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
          '/': (context) => HttpPage(),
          '/ChangePage': (context) => const ChangePage(),
          '/ProfilePage': (context) => const ProfilePage(),
          '/LoginPage':(context)=>const LoginPage(),
          '/MyFutureBuilderPage':(context)=>const MyFutureBuilderPage(),
        });
  }
}
