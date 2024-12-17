import 'package:flutter/material.dart';

class Change extends StatelessWidget {
  const Change({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Change Page'),
        ),
        body: const ChangingPage());
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
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          const Text("กรอกรายละเอียดการชาร์จที่ต้องการ"),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Current SOC %"),
                  SizedBox(
                    width: 100,
                    child: TextField(
                      decoration: InputDecoration(border: OutlineInputBorder()),
                    ),
                  ),
                ],
              ),
              Image.network(
                "https://cdn2.iconfinder.com/data/icons/car-14/100/Car_Paint-512.png",
                width: 100,
                height: 75,
              ),
              const Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Target SOC %"),
                  SizedBox(
                    width: 100,
                    child: TextField(
                      decoration: InputDecoration(border: OutlineInputBorder()),
                    ),
                  ),
                ],
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(Icons.charging_station_rounded),
                          SizedBox(
                            width: 10,
                          ),
                          Text("Charge rate A")
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 200,
                      height: 40,
                      child: TextField(
                        obscureText: false,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: "Charge rate"),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(Icons.electric_meter),
                          SizedBox(
                            width: 10,
                          ),
                          Text("Volt")
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 200,
                      height: 40,
                      child: TextField(
                        obscureText: false,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(), labelText: "Volt"),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(Icons.power),
                          SizedBox(
                            width: 10,
                          ),
                          Text("W charge")
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 200,
                      height: 40,
                      child: TextField(
                        obscureText: false,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: "W charge"),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text("เวลาที่ใช้ชาร์จโดยเฉลี่ย : 1000.000 hrs")
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
