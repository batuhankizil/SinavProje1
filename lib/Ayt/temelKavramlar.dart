import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class temelKavramlar extends StatefulWidget {
  const temelKavramlar({Key? key}) : super(key: key);

  @override
  State<temelKavramlar> createState() => _temelKavramlarState();
}

class _temelKavramlarState extends State<temelKavramlar> {

  final db = FirebaseFirestore.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Temel Kavramlar'),
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
      body: StreamBuilder<QuerySnapshot>(
        stream: db.collection('temelKavramlar').snapshots(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return ListView(
              children: snapshot.data!.docs.map((doc) {
                return Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(doc['title1'],style: TextStyle(color: HexColor("32a852"),fontSize: 20,fontWeight: FontWeight.bold)),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Text(doc['context1']),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Text(doc['title2'],style: TextStyle(color: HexColor("32a852"),fontSize: 20,fontWeight: FontWeight.bold)),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Text(doc['context2']),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Text(doc['title3'],style: TextStyle(color: HexColor("32a852"),fontSize: 20,fontWeight: FontWeight.bold)),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Text(doc['context3']),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Text(doc['title4'],style: TextStyle(color: HexColor("32a852"),fontSize: 20,fontWeight: FontWeight.bold)),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Text(doc['context4']),


                    ],
                  ),
                );
              }).toList(),
            );
          }
        },
      ),

      /*body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(padding: EdgeInsets.only(left: 10)),
            Container(child: Text('Rakam, Say??', style: TextStyle(color: HexColor("32a852"),fontSize: 20,fontWeight: FontWeight.bold)),margin: EdgeInsets.all(10),),
            Container(child: Text('Say??lar?? yazmak i??in kullan??lan sembollere rakam denir. Bir ??oklu??u belirtmen i??in bir veya birden fazla rakamla yaz??lan ifadeye say?? denir.
            Kulland??????m??z 10???luk say?? sisteminde rakamlar 0, 1, 2, 3, 4, 5, 6, 7, 8, 9 olmak ??zere 10 adettir.
            1923, 100, 5 ve 81 birer say??d??r.', style: TextStyle(color: HexColor("5E5E5E")),),margin: EdgeInsets.all(10),),
            Container(child: Text('Do??al Say??lar', style: TextStyle(color: HexColor("32a852"),fontSize: 20,fontWeight: FontWeight.bold)),margin: EdgeInsets.all(10),),
            Container(child: Text('N = { 0, 1, 2, 3, 4, ??? } k??mesine do??al say??lar k??mesi denir ve ??? N ??? harfi ile isimlendirilir.', style: TextStyle(color: HexColor("5E5E5E")),),margin: EdgeInsets.all(10),),
            Container(child: Text('Sayma Say??lar??', style: TextStyle(color: HexColor("32a852"),fontSize: 20,fontWeight: FontWeight.bold)),margin: EdgeInsets.all(10),),
            Container(child: Text('Sadece nesneleri saymaya yarayan say??lard??r. 1, 2, 3, 4, ??? diye ilerlerler ve bitmezler. Bir sonu yoktur sonsuzlard??r.'),margin: EdgeInsets.all(10),),
            Container(child: Text('Tam Say??lar', style: TextStyle(color: HexColor("32a852"),fontSize: 20,fontWeight: FontWeight.bold)),margin: EdgeInsets.all(10),),
            Container(child: Text('Z = { ???, ???3, ???2, ???1, 0, 1, 2, 3, ??? } k??mesine tam say??lar k??mesi denir ve ??? Z ??? harfi ile isimlendirilir.
            0???dan k??????k tam say??lara negatif tam say??lar denir ve ??? Z??? ??? ile g??sterilir. Z??? = { ???1, ???2, ???3, ??? }
            0???dan b??y??k tam say??lara pozitif tam say??lar denir ve ??? Z+ ??? ile g??sterilir. Z+ = { 1, 2, 3, ???}
            Z = Z??? ??? {0} ??? Z+', style: TextStyle(color: HexColor("5E5E5E")),),margin: EdgeInsets.all(10),),
          ],
        ),

      ),*/
    );
  }
}
