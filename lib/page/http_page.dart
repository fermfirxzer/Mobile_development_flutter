import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';

Future<String> fetchData() async {
  final response = await http.get(Uri.parse('https://itpart.net/mobile/api/product1.php'));
  if (response.statusCode == 200) {
    String strBody = response.body.toString();
    debugPrint('ResponseStatusCode: $response'); // Check Status Code = 200
    debugPrint('ResponseBody: ' + strBody);
    return strBody;
  } else {
    debugPrint("false to fetch Data");
    throw Exception('error :(');
  }
}
class HttpPage extends StatefulWidget {
  const HttpPage({super.key});

  @override
  State<HttpPage> createState() => _HttpPageState();
}

class _HttpPageState extends State<HttpPage> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("This is AppBar")),
      body: FutureBuilder(
          future: fetchData(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const CircularProgressIndicator();
            } else if (snapshot.hasData) {
              return Text(
                '${snapshot.data}',
                style: TextStyle(fontSize: 18),
              );
            } else if (snapshot.hasError) {
              return Text('${snapshot.error}');
            }
            return const Text('No data available');
          }),
    );
  }
}
