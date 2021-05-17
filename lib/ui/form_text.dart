import 'package:flutter/material.dart';

class FormTextField extends StatefulWidget {
  @override
  _FormTextFieldState createState() => _FormTextFieldState();
}

class _FormTextFieldState extends State<FormTextField> {
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
      debugPrint("İsim soyisim = $_adsoyad");
      debugPrint("E-posta = $_email");
      debugPrint("Şifre = $_sifre");
      //POST işlemi yapılacak....
    }else{
      debugPrint("Hatalı alanlar var kontrol et !");
    }
  }
}
