import 'package:flutter/material.dart';
import 'edit_alarm.dart';

class ListAlarm extends StatefulWidget {
  const ListAlarm({super.key});

  @override
  State<ListAlarm> createState() => _ListAlarmState();
}

class _ListAlarmState extends State<ListAlarm> {
  bool isOn = false;
  bool isOn2 = false;
  bool isOn3 = false;
  bool isOn4 = false;
  bool isOn5 = false;
  bool isOn6 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue),
      body:
          // ListView.builder(
          //   itemCount: 10,
          //   itemBuilder: (context, index) {
          //     return Card(
          //       elevation: 10.0,
          //       child: InkWell(
          //         onTap: () {
          //           Navigator.push(
          //             context,
          //             MaterialPageRoute(builder: (context) => EditAlarm()),
          //           );
          //         },
          //         child:
          //         ListTile(
          //       leading: Icon(Icons.alarm),
          //       title: Text("Bangun Pagi"),
          //       subtitle: Text("06:67"),
          //       trailing: Switch(
          //         activeColor: Colors.blue,
          //         value: isOn2,
          //         onChanged: (value) {
          //           setState(() {
          //             isOn2 = value;
          //           });
          //         },
          //       ),
          //     ),
          //       ),
          //     );
          //   },
          // ),
          Column(
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => EditAlarm()),
                  );
                },

                child: ListTile(
                  leading: Icon(Icons.alarm),
                  title: Text("Bangun Pagi"),
                  subtitle: Text("67:67"),
                  trailing: Switch(
                    activeColor: Colors.blue,
                    value: isOn,
                    onChanged: (value) {
                      setState(() {
                        isOn = value;
                      });
                    },
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => EditAlarm()),
                  );
                },

                child: ListTile(
                  leading: Icon(Icons.alarm),
                  title: Text("Bangun Siang"),
                  subtitle: Text("76:76"),
                  trailing: Switch(
                    activeColor: Colors.blue,
                    value: isOn2,
                    onChanged: (value) {
                      setState(() {
                        isOn2 = value;
                      });
                    },
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => EditAlarm()),
                  );
                },

                child: ListTile(
                  leading: Icon(Icons.alarm),
                  title: Text("Sekolah"),
                  subtitle: Text("05:00"),
                  trailing: Switch(
                    activeColor: Colors.blue,
                    value: isOn3,
                    onChanged: (value) {
                      setState(() {
                        isOn3 = value;
                      });
                    },
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => EditAlarm()),
                  );
                },

                child: ListTile(
                  leading: Icon(Icons.alarm),
                  title: Text("Sekolah"),
                  subtitle: Text("05:00"),
                  trailing: Switch(
                    activeColor: Colors.blue,
                    value: isOn4,
                    onChanged: (value) {
                      setState(() {
                        isOn4 = value;
                      });
                    },
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => EditAlarm()),
                  );
                },

                child: ListTile(
                  leading: Icon(Icons.alarm),
                  title: Text("Sekolah"),
                  subtitle: Text("05:00"),
                  trailing: Switch(
                    activeColor: Colors.blue,
                    value: isOn5,
                    onChanged: (value) {
                      setState(() {
                        isOn5 = value;
                      });
                    },
                  ),
                ),
              ),

              // ListTile(
              //   leading: Icon(Icons.alarm),
              //   title: Text("Sekolah"),
              //   subtitle: Text("76:67"),
              //   trailing: Switch(
              //     activeColor: Colors.blue,
              //     value: isOn2,
              //     onChanged: (value) {
              //       setState(() {
              //         isOn2 = value;
              //       });
              //     },
              //   ),
              // ),
            ],
          ),
    );
  }
}
