import 'package:flutter/material.dart';
import '../class/user.dart';
import 'package:http/http.dart' as http;
class ListView_page extends StatelessWidget {
  ListView_page({super.key});
  final List<String> product = <String>[
    "Soda pop",
    "This is Product",
    "MJ product",
    " "
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("This is App Bar")),
        body: ListView.separated(
            separatorBuilder: (BuildContext context, int index) =>
                const Divider(),
            itemCount: product.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text('${product[index]}'),
                onTap: () {Navigator.pushNamed(context, '/MyFutureBuilderPage');},
                leading: Icon(Icons.map),
              );
            }));
  }
}
// Future<List<User>> fetchUser() async {
//   final response = await http.get('https://jsonplaceholder.typicode.com/photos' as Uri);
//   String logResponse = response.statusCode.toString();
//   if (response.statusCode == 200) {
//     print('ResponseStatusCode: $logResponse'); // Check Status Code = 200
//     print('ResponseBody: ' + response.body); // Read Data in Array
//     List<dynamic> responseJson = json.decode(response.body);
//     return responseJson.map((m) => new User.fromJson(m)).toList();
//   } else {
//     throw Exception('error :(');
//   }
// }
