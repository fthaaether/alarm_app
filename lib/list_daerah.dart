import 'package:flutter/material.dart';

class ListDaerah extends StatefulWidget {
  const ListDaerah({super.key});

  @override
  State<ListDaerah> createState() => _ListDaerahState();
}

class _ListDaerahState extends State<ListDaerah> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "List Daerah",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blue,
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text("Jawa Barat"),
            subtitle: Text("Ibukota : Bandung"),
          ),
          ListTile(
            title: Text("Jawa Barat"),
            subtitle: Text("Ibukota : Bandung"),
          ),
          ListTile(
            title: Text("Jawa Barat"),
            subtitle: Text("Ibukota : Bandung"),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}
