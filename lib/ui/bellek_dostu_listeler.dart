import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class BellekDostuListeler extends StatelessWidget {

  List<Ogrenci> tumOgrenciler = [];

  @override
  Widget build(BuildContext context) {

    ogrenciVerileriniGetir();

    return ListView.builder(
      itemCount: 250,
      itemBuilder: (context, index) {
        return Card(
          elevation: 3,
          child: ListTile(
            leading: CircleAvatar(
              //child: Icon(Icons.android),
              child: tumOgrenciler[index]._cinsiyet == true ? Text("E") : Text("K"),
              radius: 20,
            ),
            title: Text(tumOgrenciler[index]._isim),
            subtitle: Text(tumOgrenciler[index]._aciklama),
            trailing: Icon(Icons.arrow_forward_sharp),
            tileColor: tumOgrenciler[index]._cinsiyet == true ? Colors.blue.shade200 : Colors.pink.shade200,
            onTap: () {
              toastMesajGoster(index);
              alertDialogGoster(context, index);
            },
          ),
        );
      },
    );
  }

  ogrenciVerileriniGetir(){
    tumOgrenciler = List.generate(300, (sayac) =>
    Ogrenci(
      "${sayac}. Öğrenci Adı",
      "${sayac}. Öğrenci Açıklaması",
      sayac % 2 == 0 ? true:false //true erkek, false kadın
    )
    );
  }

  toastMesajGoster(int i) {
    Fluttertoast.showToast(
        msg: tumOgrenciler[i]._isim+" tıklandı",
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.orange,
        textColor: Colors.white,
        fontSize: 20.0
    );
  }

  alertDialogGoster(BuildContext context, int i) {
    showDialog(
      context: context,
      //boşluk tıklanınca kapatma..
      barrierDismissible: false,
      builder: (context) {
        return AlertDialog(
          title: Text("Alert başlığı"),
          content: SingleChildScrollView(
            child: ListBody(
              children: [
                Text("${tumOgrenciler[i]._isim+" tıklandı"}"),
                Text("${tumOgrenciler[i]._aciklama+" tıklandı"}"),
              ],
            ),
          ),
          actions: [
            ButtonBar(
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text("TAMAM"),
                ),
                RaisedButton(
                  child: Text("KAPAT"),
                  onPressed: () => {
                    Navigator.of(context).pop()
                  },
                ),
              ],
            ),
          ],
        );
      }
    );
  }

}

class Ogrenci{
  String _isim;
  String _aciklama;
  bool _cinsiyet;
  Ogrenci(this._isim, this._aciklama, this._cinsiyet);

  @override
  String toString() {
    return "Seçilen öğrenci adı $_isim, açıklaması $_aciklama";
  }

}


/*

ListView.builder(
      itemCount: 250,
      itemBuilder: (context, index) => Text("Eleman $index"),
    );


 */