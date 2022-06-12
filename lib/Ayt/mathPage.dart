import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sinavproje/Ayt/bolmeBolunebilme.dart';
import 'package:sinavproje/Ayt/mutlakDeger.dart';
import 'package:sinavproje/Ayt/rasyonelSayilar.dart';
import 'package:sinavproje/Ayt/sayiBasamaklari.dart';
import 'package:sinavproje/Ayt/temelKavramlar.dart';

class mathPage extends StatefulWidget {
  const mathPage({Key? key}) : super(key: key);

  @override
  State<mathPage> createState() => _mathPageState();
}

class _mathPageState extends State<mathPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade400,
      appBar: AppBar(
      title: const Text('Matematik'),
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
                title:Text("Temel Kavramlar"),
                onTap: (){
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => temelKavramlar()),);
                },
              )
          ),
          Card(
            child: ListTile(
              title: Text("Sayı Basamakları"),
              onTap: (){
                Navigator.push(context,
                  MaterialPageRoute(builder: (context) => sayiBasamaklari()),);
              },
            ),
          ),
          Card(
              child: ListTile(
                title: Text("Bölme ve Bölünebilme"),
                onTap: (){
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => bolmeBolunebilme()),);
                },
              )
          ),
          Card(
              child: ListTile(
                title: Text("Rasyonel Sayılar"),
                onTap: (){
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => rasyonelSayilar()),);
                },
              )
          ),
          Card(
              child: ListTile(
                title: Text("Mutlak Değer"),
                onTap: (){
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => mutlakDeger()),);
                },
              )
          ),
        ],
        padding: EdgeInsets.all(30),
      ),
    );
  }
}