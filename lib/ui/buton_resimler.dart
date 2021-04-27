import 'package:flutter/material.dart';

Widget buton_resimler(){
  return Column(
    children: [
      Text(
        "Resimler ve Butonlar",
        style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: 100,
            height: 100,
            color: Colors.red.shade200,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset("assets/images/internet.jpg", width: 64,),
                Text("Assets")
              ],
            ),
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.red.shade200,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.network("https://www.gedik.edu.tr/wp-content/uploads/halil-kaya-gedik.jpg", width: 64,),
                Text("Network")
              ],
            ),
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.red.shade200,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage("https://gedik.edu.tr/wp-content/uploads/igun-white.png"),
                  radius: 30,
                  backgroundColor: Colors.black,
                ),
                Text("Circle Avatar")
              ],
            ),
          )
        ],
      ),
      Container(
        margin: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            RaisedButton(
              child: Text("Raised Button"),
              onPressed: () => {debugPrint("Raised Button tıklandı")},
            ),
            ElevatedButton(
              onPressed: () {
                var mesaj = "Deneme buton mesajıdır.";
                debugPrint(mesaj);
              },
              child: Text("Elevated Button"),
            ),
            ElevatedButton(
              onPressed: () {
                uzunMesajGoster();
              },
              child: Text("Elevated Fonk Button"),
            ),
            IconButton(
              icon: Icon(Icons.add),
              iconSize: 35,
              onPressed: () => {debugPrint("Icon Button tıklandı")},
              color: Colors.orange,
            )
          ],
        ),
      )
    ],
  );
}

void uzunMesajGoster() {
  debugPrint("Fonksiyon mesajıdır.");
}

//Container örneği
/*
* Container(
        color: Colors.green.shade200,
        height: 200,
        width: 200,
        child: Text(
          "Flutter Dersi",
          style: TextStyle(fontSize: 25),
          textAlign: TextAlign.center,
        ),
        alignment: Alignment.center,
      )*/

// mainaxis
/*
Container(
        color: Colors.green.shade200,
        child: Row(
          //içerik kadar yer kapla...
          //mainAxisSize: MainAxisSize.min,
          mainAxisSize: MainAxisSize.max,
          //default değeri starttır.
          //mainAxisAlignment: MainAxisAlignment.start,
          //mainAxisAlignment: MainAxisAlignment.end,
          //öncesi ve sonrasını dikkate alarak öğeler arasında boşluk
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(Icons.add_alarm, size:64, color: Colors.blue),
            Icon(Icons.add_alarm, size:64, color: Colors.cyan),
            Icon(Icons.add_alarm, size:64, color: Colors.orange),
            Icon(Icons.add_alarm, size:64, color: Colors.red),
            /*Expanded(child: Icon(Icons.add_alarm, size:64, color: Colors.red),),
            Expanded(child: Icon(Icons.add_alarm, size:64, color: Colors.red),),
            Expanded(child: Icon(Icons.add_alarm, size:64, color: Colors.red),),
            Expanded(child: Icon(Icons.add_alarm, size:64, color: Colors.red),),*/
          ],
        ),
      )
 */