import 'package:flutter/material.dart';

class Listeler extends StatelessWidget {
  //List<int> listeNumaralari = List.filled(300, 1);
  List<int> listeNumaralari = List.generate(20, (i) => i);
  List<String> listeBaslik = List.generate(20, (j) => "${j+1}. Başlık elemanı");

  @override
  Widget build(BuildContext context) {
    //debugPrint(listeNumaralari.toString());
    //debugPrint(listeBaslik.toString());
    return ListView(
      children: listeNumaralari
      .map((o_anki_eleman) => Column(
        children: [
          Container(
            child: Card(
              color: Colors.teal.shade200,
              elevation: 10,
              margin: EdgeInsets.all(5),
              child: ListTile(
                leading: CircleAvatar(
                  child: Icon(Icons.android),
                  radius: 20,
                ),
                title: Text("Listile widget başlığı ${o_anki_eleman+1}"),
                subtitle: Text(listeBaslik[o_anki_eleman]),
                trailing: Icon(Icons.arrow_forward_sharp),
              ),
            ),
          ),
          Divider(height: 5, indent: 75, endIndent: 75, color: Colors.pink,),
        ],
      )
      ).toList(),
    );
  }
}

/*
return ListView(
      children: listeNumaralari
      .map((e) => Widget()
      ).toList(),
    );
 */