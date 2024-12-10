import 'package:flutter/material.dart';

void main() {
  runApp(const Myapp());
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/images/dash-fainting.gif',
                        width: 250,
                        height: 200,
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
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Text("สรุปรายละเอียดการชาร์จ",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.calendar_month),
                              Text("วันที่ชาร์จ"),
                            ],
                          ),
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
                const Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: 16.0), // Horizontal padding
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "ค่าบริการรวมทั้งสิ้น",
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "100 บาท",
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ]),
          floatingActionButton: FloatingActionButton(
              onPressed: () {
                debugPrint("TAB pressed");
              },
              child: const Icon(Icons.exit_to_app)),
        ));
  }
}

// body:Center(
//             child:Column( 
//               mainAxisAlignment: MainAxisAlignment.start,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                     const Text("Hi",style: TextStyle(fontSize: 24),),const Text("Nice Try",style: TextStyle(fontSize: 24),),
//                     ElevatedButton(onPressed: () {debugPrint("Nice Try!");},
                    
//                     child: const Text("This is ElevatedButton!!",style: TextStyle(fontSize: 16),)),
//                     Image.asset('assets/images/dash-fainting.gif',width: 250,height: 250,),
//                     Row(mainAxisAlignment: MainAxisAlignment.center,children: [Text("Hi,Nice Try bro!"),IconButton(onPressed: () {}, icon: const Icon(Icons.home,size:30),padding: const EdgeInsets.all(40),),],),
//                     // Image.asset('assets/images/dash-fainting.gif',width: 250,height: 250,),IconButton(onPressed: () {}, icon: const Icon(Icons.home,size:30),padding: const EdgeInsets.all(40),),
//               ],
//             ),
//           ),
