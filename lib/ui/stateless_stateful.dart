import 'package:flutter/material.dart';


class statelessStateful extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.orange,
      ),
      title: "Stateless ve Stateful Widgetlar",
      home: MyHomePage(title: "Stateless ve Stateful",),
    );
  }
}

class MyHomePage extends StatefulWidget {
  String title;
  int sayac = 1;

  MyHomePage({String title}){
    this.title = title;
  }

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title + " (${widget.sayac}) "+ (widget.sayac == 10 ? "10 !": "")),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          setState(() {
            sayacArttir();
          });
        },
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Butona basılma sayısı"),
            Text(widget.sayac.toString(), style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
          ],
        ),
      ),
    );
  }

  sayacArttir(){
    widget.sayac++;
    debugPrint(widget.sayac.toString());
  }
}