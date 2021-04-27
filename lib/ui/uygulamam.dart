import 'package:flutter/material.dart';

import 'buton_resimler.dart';

class Uygulamam extends StatelessWidget {
  int sayac = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        accentColor: Colors.orange,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Mobil Kodlama",
            style: TextStyle(
              fontSize: 25.0,
              color: Colors.orange,
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(
            Icons.add_alarm,
            color: Colors.white,
          ),
          onPressed: () {
            sayac++;
            debugPrint("${sayac} kez butona tıklandı...");
          },
          backgroundColor: Colors.green,
        ),
        //floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        body: buton_resimler(),
      ),
    );
  }
}