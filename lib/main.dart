import 'package:flutter/material.dart';

void main() {
  runApp(const Change());  // This is where you start the app
}

class Change extends StatelessWidget {
  const Change({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        appBarTheme: const AppBarTheme(color: Colors.red),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
      ),
      home: const ChangingPage(),  // Set ChangingPage as the home widget
    );
  }
}

class ChangingPage extends StatefulWidget {
  const ChangingPage({super.key});

  @override
  State<ChangingPage> createState() => _ChangingPageState();
}

class _ChangingPageState extends State<ChangingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Changing Page'),
      ),
      body: const Center(
        child: 
        Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Current SOC %",
                    style: TextStyle(color: Colors.black),
                  ),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: 'Enter your Current SOC %',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                ],
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Target SOC %  ",
                    style: TextStyle(color: Colors.black),
                  ),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: 'Enter your Current SOC %',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                ],
              ),
             
               SizedBox(height: 20,),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      "Change rate A ",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  // Expanded to avoid overflow when the textfield expands
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: 'Enter your Change rate',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                ],
              ),
              SizedBox(height: 20,),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Testdadadass",
                    style: TextStyle(color: Colors.black),
                  ),
                  Expanded(child: TextField(decoration: InputDecoration(labelText: "Enter your change",border: OutlineInputBorder()),))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
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
        home: Scaffold(
          appBar: AppBar(
            title: const Center(
                child: Text("My appbar",
                    style: TextStyle(fontSize: 24, color: Colors.white))),
            leading: IconButton(
                onPressed: () {
                  debugPrint("This is title!");
                },
                icon: const Icon(Icons.menu)),
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.home, color: Colors.white),
              ),
            ],
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
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
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          const Text(
                            "เรายินดีที่ได้เป็นส่วนหนึ่งในการเดินทางของคุณ",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.normal),
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
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold)),
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
                    Center(
                      child: Card(
                        elevation: 10,
                        margin: const EdgeInsets.all(10),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                          side: const BorderSide(
                            color: Colors.red, // Border color
                            width: 2.0, // Border width
                          ),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(20),
                          child: Text(
                            "ราคา :100 บาท",
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      margin: const EdgeInsets.all(10),
                      color: Colors.red,
                      child: const Center(
                          child: Text("ค่าบริการรวมทั้งสิน : 100 บาท")),
                    )
                  ]),
            ],
          ),
          floatingActionButton: FloatingActionButton(
              onPressed: () {
                debugPrint("TAB pressed");
              },
              child: const Icon(Icons.exit_to_app)),
        ));
  }
}
