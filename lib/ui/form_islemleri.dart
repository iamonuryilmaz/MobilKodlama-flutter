import 'package:flutter/material.dart';

class FormIslemleri extends StatefulWidget {
  @override
  _FormIslemleriState createState() => _FormIslemleriState();
}

class _FormIslemleriState extends State<FormIslemleri> {
  String girilenDeger = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Input İşlemleri"),
      ),
      body: ListView(
        children: [
          Padding(
            child: TextField(
              keyboardType: TextInputType.number,
              textInputAction: TextInputAction.search,
              maxLength: 10,
              maxLines: 3,
              cursorColor: Colors.pink,
              onChanged: (x) {
                setState(() {
                  girilenDeger = x;
                });
                debugPrint(x.toString());
              },
              onSubmitted: (s) {
                debugPrint(s.toString());
              },
              decoration: InputDecoration(
                hintText: "10 karakter giriniz...",
                labelText: "Metin Giriniz",
                border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                icon: Icon(Icons.add),
                fillColor: Colors.pink.shade900,
                filled: true
                //prefixIcon: Icon(Icons.add),
                //suffixIcon: Icon(Icons.add),
              ),
            ),
            padding: EdgeInsets.all(10),
          ),
          Container(
            margin: EdgeInsets.all(10),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 2,
            color: Colors.teal,
            child: Text(girilenDeger, textAlign: TextAlign.center,),
          ),
        ],
      ),
    );
  }
}
