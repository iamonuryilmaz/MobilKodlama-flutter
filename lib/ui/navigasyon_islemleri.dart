import 'package:flutter/material.dart';

class NavigasyonIslemleri extends StatelessWidget {

  String title = "İkinci Sayfa";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Navigasyon İşlemleri",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text("Birinci Sayfa"),
              onPressed: () {
                //navigasyon işlemleri...
                Navigator.push(context, MaterialPageRoute(builder: (context) => BirinciSayfa() ), );
              },
            ),
            ElevatedButton(
              child: Text("İkinci Sayfa"),
              style: ElevatedButton.styleFrom(primary: Colors.pink),
              onPressed: () {
                //navigasyon işlemleri...
                Navigator.push(context, MaterialPageRoute(builder: (context) => IkinciSayfa(title) ), );
              },
            ),
            ElevatedButton(
              child: Text("Üçüncü Sayfa"),
              style: ElevatedButton.styleFrom(primary: Colors.orange),
              onPressed: () {
                //navigasyon işlemleri...
                Navigator.push(context, MaterialPageRoute(builder: (context) => UcuncuSayfa() ), );
              },
            ),
            ElevatedButton(
              child: Text("Dördüncü Sayfa"),
              style: ElevatedButton.styleFrom(primary: Colors.teal),
              onPressed: () {
                //navigasyon işlemleri...
                /*Navigator.push(context, MaterialPageRoute(builder: (context) => DorduncuSayfa() ), )
                    .then((e) => debugPrint(e.toString()) ); */
                Navigator.pushNamed(context, "/DSayfa").then((value) => debugPrint(value.toString()));
              },
            ),
            Divider(height: 15,),
            ElevatedButton(
              child: Text("Drawer Menü"),
              style: ElevatedButton.styleFrom(primary: Colors.green),
              onPressed: () {
                Navigator.pushNamed(context, "/DrawerMenu");
              },
            ),
            ElevatedButton(
              child: Text("Form İşlemleri"),
              style: ElevatedButton.styleFrom(primary: Colors.blue),
              onPressed: () {
                Navigator.pushNamed(context, "/FormIslemleri");
              },
            ),
            ElevatedButton(
              child: Text("Form Text Field"),
              style: ElevatedButton.styleFrom(primary: Colors.brown),
              onPressed: () {
                Navigator.pushNamed(context, "/FormYapisi");
              },
            ),
            Divider(height: 15,),
            ElevatedButton(
              child: Text("Http İşlemleri"),
              style: ElevatedButton.styleFrom(primary: Colors.orange),
              onPressed: () {
                Navigator.pushNamed(context, "/HttpIslemleri");
              },
            ),
          ],
        ),
      ),
    );
  }
}

class DorduncuSayfa extends StatelessWidget {

  bool isDeleted = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Dördüncü Sayfa",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Dördüncü Sayfa İçeriği"),
            RaisedButton(
              child: Text("Geri Dön"),
              onPressed: () => {
                Navigator.pop(context, isDeleted)
              },
            ),
          ],
        ),
      ),
    );
  }
}
class UcuncuSayfa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Üçüncü Sayfa",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Üçüncü Sayfa İçeriği"),
            RaisedButton(
              child: Text("Geri Dön"),
              onPressed: () => {
                Navigator.pop(context)
              },
            ),
          ],
        ),
      ),
    );
  }
}
class IkinciSayfa extends StatelessWidget {

  String comingTitle;

  IkinciSayfa(this.comingTitle);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Gelen Değer: $comingTitle",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(comingTitle),
          ],
        ),
      ),
    );
  }
}
class BirinciSayfa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Birinci Sayfa",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Birinci Sayfa İçeriği"),
          ],
        ),
      ),
    );
  }
}

