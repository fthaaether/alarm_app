import 'package:flutter/material.dart';

class StopWatch extends StatefulWidget {
  const StopWatch({super.key});

  @override
  State<StopWatch> createState() => _StopWatchState();
}

class _StopWatchState extends State<StopWatch> {
  int jam = 0;
  int menit = 0;
  int detik = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          "Stopwatch Pro",
          style: TextStyle(fontWeight: FontWeight.w600, fontFamily: 'Poppins'),
        ),
      ),
      body: Center(
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 50),
              child: Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade300, width: 5),
                  shape: BoxShape.circle,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("$jam"),
                    Text(":"),
                    Text("$menit"),
                    Text(":"),
                    Text("$detik"),
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 600),
                InkWell(
                  onTap: () {
                    setState(() {
                      jam = 0;
                      menit = 0;
                      detik = 0;
                    });
                  },
                  child: Icon(Icons.history),
                ),

                SizedBox(width: 50),
                InkWell(
                  onTap: () {
                    setState(() {
                      jam = jam + 1;
                    });
                    setState(() {
                      menit = menit + 1;
                    });
                    setState(() {
                      detik = detik + 1;
                    });
                  },
                  child: Icon(Icons.play_arrow, size: 100),
                ),
                SizedBox(width: 50),
                InkWell(
                  // onTap: () {
                  //   setState(() {
                  //     jam = jam + 1;
                  //   });
                  //   setState(() {
                  //     menit = menit + 1;
                  //   });
                  //   setState(() {
                  //     detik = detik + 1;
                  //   });
                  // },
                  child: Icon(Icons.alarm),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
