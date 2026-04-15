import 'package:flutter/material.dart';

class EditAlarm extends StatefulWidget {
  const EditAlarm({super.key});

  @override
  State<EditAlarm> createState() => _EditAlarmState();
}

class _EditAlarmState extends State<EditAlarm> {
  bool isOff = false;
  bool isOff2 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Edit Alarm")),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsetsGeometry.only(top: 100, bottom: 50),
              child: Text("03 : 15", style: TextStyle(fontSize: 100)),
            ),
            Card(
              child: ListTile(
                title: Text(
                  "Ulangi",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                trailing: Text("Setiap Hari >"),
              ),
            ),
            SizedBox(height: 5),
            Card(
              child: ListTile(
                title: Text(
                  "Lewati Hari Libur Nasional",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                trailing: Switch(
                  value: isOff,
                  onChanged: (value) {
                    setState(() {
                      isOff = value;
                    });
                  },
                ),
              ),
            ),
            SizedBox(height: 5),
            Card(
              child: ListTile(
                title: Text(
                  "Suara Alam",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                trailing: Text("After the rain >"),
              ),
            ),
            SizedBox(height: 5),
            Card(
              child: ListTile(
                title: Text(
                  "Label",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                trailing: Text(">"),
              ),
            ),
            SizedBox(height: 5),
            Card(
              child: ListTile(
                title: Text(
                  "Tunda",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                trailing: Text(">"),
              ),
            ),
            SizedBox(height: 5),
            Card(
              child: ListTile(
                title: Text(
                  "Bergetar hatiku ketika berdering",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                trailing: Switch(
                  value: isOff2,
                  onChanged: (value) {
                    setState(() {
                      isOff2 = value;
                    });
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
