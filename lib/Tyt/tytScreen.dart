import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sinavproje/Tyt/turkishPage.dart';

class tytScreen extends StatefulWidget {
  const tytScreen({Key? key}) : super(key: key);

  @override
  State<tytScreen> createState() => _tytScreenState();
}

class _tytScreenState extends State<tytScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TYT'),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.green, Colors.green.shade800],
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
            ),
          ),
        ),
      ),
      body: ListView(
        children: [
          Card(
              child: ListTile(
                title:Text("Matematik"),
              )
          ),
          Card(
            child: ListTile(
              title: Text("Türkçe"),
              onTap: (){
                Navigator.push(context,
                  MaterialPageRoute(builder: (context) => turkishPage()),);
              },
            ),
          ),
          Card(
              child: ListTile(
                title: Text("Sosyal Bilimleri"),
              )
          ),
          Card(
              child: ListTile(
                title: Text("Fen Bilimleri"),
              )
          ),
        ],
        padding: EdgeInsets.all(30),
      ),
    );
  }
}
