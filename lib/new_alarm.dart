import 'package:flutter/material.dart';
import 'list_alarm.dart';

class NewAlarm extends StatelessWidget {
  const NewAlarm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          "Set Your Alarm",
          style: TextStyle(fontWeight: FontWeight.w600, fontFamily: 'Poppins'),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 30),
              child: Icon(Icons.alarm, size: 190, color: Colors.blue),
            ),
            Text("67 : 67", style: TextStyle(fontSize: 67)),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Set My Alarm"),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.history),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ListAlarm()),
          );
        },
      ),
    );
  }
}
