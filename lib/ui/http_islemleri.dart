import 'package:flutter/material.dart';
import "dart:convert";
import 'package:http/http.dart' as http;
import 'package:mobil_kodlama_dersi/models/Gonderi.dart';

class HttpIslemleri extends StatefulWidget {
  @override
  _HttpIslemleriState createState() => _HttpIslemleriState();
}

class _HttpIslemleriState extends State<HttpIslemleri> {
  Gonderi gonderi;

  //ilerde bir zamanda tamamlanacak olan içerisinde Gonderi sinifina sahip Liste !
  Future<List<Gonderi>> _gonderiGet() async {
    //http url istek atılır, veriler response a atanır.
    var response = await http.get(Uri.https('jsonplaceholder.typicode.com', '/posts'));
    //response çalıştıysa yani 200 ise
    if (response.statusCode == 200) {
      //gelen body datasını bir listtir, geriye map olarak döndür, en sonda listeye çevir.
      return (json.decode(response.body) as List).map((e) => Gonderi.fromJsonMap(e)).toList();
    } else {
      //hata kodunu ekrana yaz...
      throw Exception("Bağlanamadı ! Hata kodu: ${response.statusCode}");
    }
  }

  /*Future<Gonderi> _gonderiGet() async{
    var response = await http.get(Uri.https('jsonplaceholder.typicode.com', '/posts/1'));
    //200 404 201 505 403
    debugPrint(response.statusCode.toString());
    debugPrint(response.body);
    if(response.statusCode == 200){
      return Gonderi.fromJsonMap(json.decode(response.body));
    }else{
      throw Exception("Bağlanamadı ! Hata kodu: ${response.statusCode}");
    }
  }*/

  /* @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _gonderiGet().then((deger) {
      gonderi = deger;
      debugPrint("Title : ${gonderi.title}");
      debugPrint("Body : ${gonderi.body}");
    });

  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "HTTP İşlemleri",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: FutureBuilder(
        future: _gonderiGet(),
        builder: (BuildContext context, AsyncSnapshot<List<Gonderi>> snapshot) {
          //snapshot içerisinde dizi mantığı ile 0 1 2 3 4 ... n adet veri var.
          if (snapshot.hasData) {
            return ListView.builder(
              //ekrana gelen veri kadar widget oluştur...
              itemCount: snapshot.data.length,
              itemBuilder: (context, index) {
                return Card(
                  color: index % 2 == 0 ? Colors.teal.shade200 : Colors.orange.shade200,
                  elevation: 2,
                  margin: EdgeInsets.all(5),
                  child: ListTile(
                    title: Text(
                      snapshot.data[index].title,
                      style: TextStyle(color: Colors.black),
                    ),
                    subtitle: Text(
                      snapshot.data[index].body,
                      style: TextStyle(color: Colors.red),
                    ),
                    leading: CircleAvatar(
                      child: Text(
                        snapshot.data[index].id.toString(),
                      ),
                    ),
                  ),
                );
              },
            );
          } else {
            //data gelmeyince....
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
