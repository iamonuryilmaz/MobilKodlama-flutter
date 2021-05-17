import 'package:flutter/material.dart';
import 'package:mobil_kodlama_dersi/ui/form_islemleri.dart';
import 'ui/drawer_islemleri.dart';
import 'ui/form_text.dart';
import 'ui/navigasyon_islemleri.dart';
//import 'ui/listeler.dart';
//import 'ui/stateless_stateful.dart';
//import 'ui/uygulamam.dart';
//import 'package:mobil_kodlama_dersi/ui/gridler.dart';
//import 'ui/bellek_dostu_listeler.dart';
//import 'ui/custom_scroll_slivers.dart';

void main() {
  runApp(
    MaterialApp(
      routes: {
        '/': (context) => NavigasyonIslemleri(),
        '/DSayfa': (context) => DorduncuSayfa(),
        '/DrawerMenu': (context) => DrawerKullanimi(),
        '/FormIslemleri': (context) => FormIslemleri(),
        '/FormYapisi': (context) => FormTextField(),
      },
      theme: ThemeData(
        primarySwatch: Colors.blue,
        accentColor: Colors.orange,
        brightness: Brightness.dark,
      ),
      debugShowCheckedModeBanner: false,
      //home: NavigasyonIslemleri(),
    ),
  );
}

//resimler ve butonlar
//runApp(Uygulamam());
//stateless ve stateful yapıları
//runApp(statelessStateful());
//Listeler