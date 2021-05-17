import 'package:flutter/material.dart';

class DrawerKullanimi extends StatefulWidget {
  @override
  _DrawerKullanimiState createState() => _DrawerKullanimiState();
}

class _DrawerKullanimiState extends State<DrawerKullanimi> {
  int secilenMenu = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Drawer Menü Kullanımı",
          style: TextStyle(color: Colors.white),
        ),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Onur YILMAZ"),
              accountEmail: Text("oyilmaz@gedik.com.tr"),
              currentAccountPicture: Image.asset("assets/images/internet.jpg"),
              otherAccountsPictures: [
                CircleAvatar(child: Text("OY"), backgroundColor: Colors.pink,),
                CircleAvatar(child: Text("AK"), backgroundColor: Colors.orange,),
              ],
            ),
            Expanded(
              child: ListView(
                children: [
                  ListTile(
                    leading: Icon(Icons.home),
                    title: Text("Ana Sayfa"),
                    trailing: Icon(Icons.arrow_forward_sharp),
                  ),
                  Card(
                    color: Colors.orange.shade300,
                    elevation: 5,
                    margin: EdgeInsets.all(5),
                    child: ListTile(
                      leading: Icon(Icons.search),
                      title: Text("Arama Sayfası"),
                      trailing: Icon(Icons.arrow_forward_sharp),
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.account_box),
                    title: Text("Hesabım Sayfa"),
                    trailing: Icon(Icons.arrow_forward_sharp),
                  ),
                  Divider(height: 10,),
                  InkWell(
                    splashColor: Colors.teal.shade300,
                    onTap: (){},
                    child: ListTile(
                      leading: Icon(Icons.account_box),
                      title: Text("InkWell"),
                      trailing: Icon(Icons.arrow_forward_sharp),
                    ),
                  ),
                  Divider(height: 10,),
                  AboutListTile(
                    applicationName: "Mobil Kodlama Dersi",
                    applicationVersion: "1.0.0",
                    applicationIcon: Icon(Icons.android),
                    child: Text("HAKKINDA"),
                    applicationLegalese: "2021 Yılı",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Sayfa İçeriği"),
            RaisedButton(
              child: Text("Geri Dön"),
              onPressed: () => {
                Navigator.pop(context)
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          //<2 çalışmaz! 2 veya >=2 olmalı. fakat ! 4 ve üzeri ise
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Ana Sayfa"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Arama"),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: "Ekle"),
          BottomNavigationBarItem(icon: Icon(Icons.account_box), label: "Profil"),
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: secilenMenu,
        onTap: (index) {
          setState(() {
            secilenMenu = index;
          });
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
      ),
    );
  }
}
