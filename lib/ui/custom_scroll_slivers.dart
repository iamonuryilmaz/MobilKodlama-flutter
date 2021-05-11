import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math' as matematik;

class CollapsableToolbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          title: Text("Sliver AppBar Title"),
          backgroundColor: Colors.red,
          expandedHeight: 200,
          floating: false,
          flexibleSpace: FlexibleSpaceBar(
            title: Text("İSTANBUL GEDİK ÜNİVERSİTESİ"),
            centerTitle: true,
            background: Image.asset("assets/images/gedik.jpg"),
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.all(6),
          sliver: SliverList(
            delegate: SliverChildListDelegate(
              sabitListeElemanlari(),
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            dinamikListeElemanlari,
            childCount: 6
          ),
        ),
        SliverGrid(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          delegate: SliverChildListDelegate(sabitListeElemanlari()),
        ),
        SliverGrid(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 200),
          delegate: SliverChildBuilderDelegate(dinamikListeElemanlari, childCount: 10),
        ),
      ],
    );
  }

  List<Widget> sabitListeElemanlari() {
    return [
      Container(
        height: 150,
        child: Text(
          "Sabit liste elemanı!",
          style: TextStyle(fontSize: 18),
          textAlign: TextAlign.center,
        ),
        color: Colors.teal,
        alignment: Alignment.center,
      ),
      Container(
        height: 150,
        child: Text(
          "Sabit liste elemanı!",
          style: TextStyle(fontSize: 18),
          textAlign: TextAlign.center,
        ),
        color: Colors.orange,
        alignment: Alignment.center,
      ),
      Container(
        height: 150,
        child: Text(
          "Sabit liste elemanı!",
          style: TextStyle(fontSize: 18),
          textAlign: TextAlign.center,
        ),
        color: Colors.green,
        alignment: Alignment.center,
      ),
      Container(
        height: 150,
        child: Text(
          "Sabit liste elemanı!",
          style: TextStyle(fontSize: 18),
          textAlign: TextAlign.center,
        ),
        color: Colors.purpleAccent.shade200,
        alignment: Alignment.center,
      ),
      Container(
        height: 150,
        child: Text(
          "Sabit liste elemanı!",
          style: TextStyle(fontSize: 18),
          textAlign: TextAlign.center,
        ),
        color: Colors.red,
        alignment: Alignment.center,
      ),
    ];
  }

  Widget dinamikListeElemanlari(BuildContext context, int index) {
    return Container(
      height: 100,
      child: Text(
        "Dinamik liste elemanı! $index",
        style: TextStyle(fontSize: 18),
        textAlign: TextAlign.center,
      ),
      color: renkOlustur(),
      alignment: Alignment.center,
    );
  }

  Color renkOlustur() {
    return Color.fromARGB(matematik.Random().nextInt(255), matematik.Random().nextInt(255), matematik.Random().nextInt(255), matematik.Random().nextInt(255));
  }
}
