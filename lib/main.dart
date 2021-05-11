import 'package:flutter/material.dart';
import 'package:mobil_kodlama_dersi/ui/gridler.dart';
import 'ui/bellek_dostu_listeler.dart';
import 'ui/custom_scroll_slivers.dart';
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
        brightness: Brightness.dark,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        /*appBar: AppBar(
          title: Text(
            "Collapsable Toolbar",
            style: TextStyle(
              fontSize: 24.0,
              color: Colors.white,
            ),
          ),
        ),*/
        body: CollapsableToolbar(),
      ),
  ));
}



