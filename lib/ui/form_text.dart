import 'package:flutter/material.dart';
import "dart:convert";
import 'package:http/http.dart' as http;

class FormTextField extends StatefulWidget {
  @override
  _FormTextFieldState createState() => _FormTextFieldState();
}

class _FormTextFieldState extends State<FormTextField> {
  //validate edilmiş temiz bir veri var ... api göndermeye hazır
  String _adsoyad, _sifre, _email;

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Form ve Textfield İşlemleri"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.save),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Form(
          //formun benzersiz numarası
          key: formKey,
          autovalidateMode: AutovalidateMode.always,
          child: ListView(
            children: [
              TextFormField(
                //initialValue: "ONUR YILMAZ",
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.account_circle),
                    hintText: "Adınız ve soyadınızı giriniz...",
                    labelText: "Ad Soyad",
                    border: OutlineInputBorder()),
                validator: (String degeri) {
                  //eğer Ad Soyad input değeri < 6 ise uyarı verelim....
                  if (degeri.length < 6) {
                    return "Lütfen en az 6 karakter değer giriniz.";
                  } else {
                    return null;
                  }
                },
                onSaved: (deger) => _adsoyad = deger,
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.account_circle),
                    hintText: "E-posta adresinizi giriniz...",
                    labelText: "E-Posta Adresi",
                    border: OutlineInputBorder()),
                validator: (String degeri) {
                  //regex email
                  if (!degeri.contains("@")) {
                    return "Lütfen geçerli bir e-posta giriniz.";
                  } else {
                    return null;
                  }
                },
                onSaved: (deger) => _email = deger,
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                maxLength: 6,
                keyboardType: TextInputType.number,
                obscureText: true,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.account_circle),
                    hintText: "Şifrenizi (6 hane) giriniz...",
                    labelText: "Şifreniz",
                    border: OutlineInputBorder()),
                validator: (String degeri) {
                  //eğer Ad Soyad input değeri < 6 ise uyarı verelim....
                  if (degeri.length < 6) {
                    return "Lütfen en az 6 karakter şifre giriniz.";
                  } else {
                    return null;
                  }
                },
                onSaved: (deger) => _sifre = deger,
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                child: Text("KAYDET"),
                onPressed: () => _girisleriKontrolEt(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _girisleriKontrolEt() {
    if(formKey.currentState.validate()){
      formKey.currentState.save();
      /*debugPrint("İsim soyisim = $_adsoyad");
      debugPrint("E-posta = $_email");
      debugPrint("Şifre = $_sifre");
      //POST işlemi yapılacak.... */
      createStudent();
    }else{
      debugPrint("Hatalı alanlar var kontrol et !");
    }
  }

  Future<void> createStudent() async {
    http.Response response = await http.post(
      Uri.parse("https://api.onurylmz.com/mobile-students/create"),
      headers: <String, String>{
        'Content-Type' : 'application/json; charset=UTF-8'
      },
      body: jsonEncode(<String, dynamic>{
        'first_name': _adsoyad,
        'last_name' : _adsoyad,
        'email': _email,
        'password': _sifre
      }),
    );

    if(response.statusCode == 200){
      return debugPrint("Başarılı !");
    }else{
      throw Exception("Bağlanamadı ! Hata kodu: ${response.statusCode}");
    }

  }
}

