import 'package:flutter/material.dart';
import 'ui/bellek_dostu_listeler.dart';
//import 'ui/listeler.dart';
//import 'ui/stateless_stateful.dart';
//import 'ui/uygulamam.dart';

void main() {
  //resimler ve butonlar
  //runApp(Uygulamam());
  //stateless ve stateful yapıları
  //runApp(statelessStateful());
  //Listeler
  runApp(MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        accentColor: Colors.orange,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Bellek Dostu Listeler",
            style: TextStyle(
              fontSize: 24.0,
              color: Colors.white,
            ),
          ),
        ),
        body: BellekDostuListeler(),
      ),
  ));
}



