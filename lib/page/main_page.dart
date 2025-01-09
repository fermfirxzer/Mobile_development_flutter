import 'package:flutter/material.dart';
import './about_page.dart';
import 'login_page.dart';
import './changing_page.dart';

class MainPage extends StatefulWidget {
  MainPage({super.key, required this.username});

  final String username;

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  late String? username;
  @override
  void initState() {
    super.initState();
    username = widget.username; // Initialize username from widget's parameter
  }

  bool get isLoggedIn => username != null && username!.isNotEmpty;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
            child: Text("My appbar",
                style: TextStyle(fontSize: 24, color: Colors.white))),
        leading: IconButton(
            onPressed: () {
              debugPrint("This is title!");
            },
            icon: const Icon(Icons.menu, color: Colors.white)),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  "/ProfilePage",
                  arguments: username,
                );
              },
              icon: const Icon(Icons.person, color: Colors.white)),
          IconButton(
            onPressed: () {
              setState(() {
                username = null;
              });
            },
            icon: const Icon(Icons.logout, color: Colors.white),
          )
        ],
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(0, 10, 10, 0),
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                OutlinedButton(
                    onPressed: () {
                      isLoggedIn
                          ? {}
                          : Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const LoginPage()));
                    },
                    child: isLoggedIn
                        ? Text(
                            "Welcome ${widget.username}!",
                            style: const TextStyle(fontSize: 16),
                          )
                        : const Text("Go to Login Page!")),
              ]),
            ),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(
                        20.0), // Adjust the radius as needed
                    child: Image.asset(
                      'assets/images/dash-fainting.gif',
                      width: 250,
                      height: 200,
                      fit: BoxFit
                          .cover, // Ensures the image is properly fitted within the specified dimensions
                    ),
                  ),
                  const Text(
                    "ขอบคุณที่ใช้บริการ App ของเรา",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    "เรายินดีที่ได้เป็นส่วนหนึ่งในการเดินทางของคุณ",
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.normal),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  Text("สรุปรายละเอียดการชาร์จ",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(Icons.calendar_month),
                      Expanded(
                          child: Text(
                        "วันที่ชาร์จ",
                        overflow: TextOverflow.ellipsis,
                      )),
                      Text("9 กันยายน 2565"),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.baby_changing_station),
                          Text("สถานีชาร์จ"),
                        ],
                      ),
                      Text("100 บาท"),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.link),
                          Text("ประเภทการชาร์จ"),
                        ],
                      ),
                      Text("CCS2"),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  Table(
                    border: TableBorder.all(color: Colors.black),
                    defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                    children: const [
                      TableRow(
                          decoration: BoxDecoration(color: Colors.white),
                          children: [
                            TableCell(
                                verticalAlignment:
                                    TableCellVerticalAlignment.middle,
                                child: Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text("วันที่ชาร์จ"),
                                )),
                            TableCell(
                                child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text("ประเภทการชาร์จ"),
                            )),
                            TableCell(
                                child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                "รายละเอียดการชาร์จ",
                                style: TextStyle(fontSize: 12),
                              ),
                            ))
                          ]),
                      TableRow(
                          decoration: BoxDecoration(color: Colors.white),
                          children: [
                            TableCell(
                                verticalAlignment:
                                    TableCellVerticalAlignment.middle,
                                child: Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text("9 กันยายน"),
                                )),
                            TableCell(
                                child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text("100 บาท"),
                            )),
                            TableCell(
                                child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text("CCS2"),
                            ))
                          ])
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.all(10),
              color: Colors.red,
              child: const Center(child: Text("ค่าบริการรวมทั้งสิน : 100 บาท")),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/ChangePage');
                },
                child: const Text("Press to go to Changing page")),
          ]),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            debugPrint("TAB pressed");
          },
          child: const Icon(Icons.exit_to_app)),
    );
  }
}
