import 'package:flutter/material.dart';
class ChangePage extends StatelessWidget {
  const ChangePage({super.key});

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

  final TextEditingController current_SOC=TextEditingController();
  final TextEditingController target_SOC=TextEditingController();
  final TextEditingController change_rate=TextEditingController();
  final TextEditingController volt_rate=TextEditingController();
  TextEditingController w_change=TextEditingController();
  final TextEditingController Bat_change=TextEditingController();
  final TextEditingController Efficiency_change=TextEditingController(); 
  String Result="0";
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
             Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Current SOC %"),
                  SizedBox(
                    width: 100,
                    child: TextField(
                      controller: current_SOC,
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
             Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Target SOC %"),
                  SizedBox(
                    width: 100,
                    
                    child: TextField(
                      controller:target_SOC,
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
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Expanded(
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
                        controller:change_rate,
                        decoration: const InputDecoration(
                          
                            border: OutlineInputBorder(),
                            labelText: "Charge rate"),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Expanded(
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
                        controller: volt_rate,
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(), labelText: "Volt"),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Expanded(
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
                        controller: w_change,
                        obscureText: false,
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: "W charge"),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(Icons.battery_charging_full),
                          SizedBox(
                            width: 10,
                          ),
                          Text("Bat")
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 200,
                      height: 40,
                      child: TextField(
                        controller: Bat_change,
                        obscureText: false,
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: "Bat"),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(Icons.battery_alert),
                          SizedBox(
                            width: 10,
                          ),
                          Text("Effiency")
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 200,
                      height: 40,
                      child: TextField(
                        controller: Efficiency_change,
                        obscureText: false,
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: "Effiency"),
                      ),
                    )
                  ],
                ),
                ElevatedButton(onPressed: (){
                  double? current=double.tryParse(current_SOC.text);
                  double? target=double.tryParse(target_SOC.text);
                  double? changerate=double.tryParse(change_rate.text);
                  double? volt=double.tryParse(volt_rate.text);
                  double? bat=double.tryParse(Bat_change.text);
                  double? efficiency=double.tryParse(Efficiency_change.text);

                  double? changingPower=volt!*changerate!/1000;
                  double? result=(target!-current!)*bat!/100/(changingPower*efficiency!);
                  setState(() {

                    Result="$result";
                    w_change.text="$changingPower";
                  });
                  debugPrint("$result");
                } , child: const Text("คำนวนระยะเวลา")),
                const SizedBox(height: 20,),
                Text("เวลาที่ใช้ชาร์จโดยเฉลี่ย : $Result hrs")
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
