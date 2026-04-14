import 'package:alarm_3/new_alarm.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyWidget());
  }
}

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
              ElevatedButton(onPressed: () {}, child: Text("Stopwatch")),
            ],
          ),
          SizedBox(height: 10),
          ElevatedButton(onPressed: () {}, child: Text("Button Route")),
        ],
      ),
    );
  }
}
