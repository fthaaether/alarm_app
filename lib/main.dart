import 'package:alarm_3/new_alarm.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'stopwatch.dart';
import 'list_daerah.dart';

// import 'dart:async';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyWidget(
      
    ));
  }
}

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key});

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   String currentTime = "";
//   late Timer timer;

//   @override
//   void initState() {
//     super.initState();
//     _updateTime();
//     timer = Timer.periodic(const Duration(seconds: 1), (timer) {});
//   }

//   void _updateTime() {
//     final now = DateTime.now();
//     setState(() {
//       currentTime =
//           "${now.hour.toString().padLeft(2, '0')} : ${now.second.toString().padLeft(2, '0')}";
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return const Placeholder();
//   }
// }

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.notifications),
        title: Text(
          "Miles Alarm",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Center(
            child: Image.asset(
              "assets/images/gekko.jpeg",
              width: 300,
              height: 300,
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.all(20),
            child: Text(
              "Miles Pro Clock",
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 40,
                color: Colors.blue,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          // Padding(padding: EdgeInsets.all(10),
          // child:
          // Text(currentTime),
          // ),
          Text(
            "Goo Goo Fonts",
            style: GoogleFonts.poppins(
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => NewAlarm()),
                  );
                },
                child: Text("New Alarm"),
              ),
              SizedBox(width: 10),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => StopWatch()),
                  );
                },
                child: Text("Stopwatch"),
              ),
            ],
          ),
          SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ListDaerah()),
              );
            },
            child: Text("Daerah List"),
          ),
        ],
      ),
    );
  }
}
