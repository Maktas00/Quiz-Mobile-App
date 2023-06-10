import 'package:bayrak_quiz_uygulamasi/QuizEkrani.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.cyan,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Anasayfa(),
    );
  }
}

class Anasayfa extends StatefulWidget {
  @override
  _AnasayfaState createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ana Ekran"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text("QUİZE HOŞGELDİNİZ BAŞLAMAK İÇİN START BUTONUNA TIKLAYIN.",style: TextStyle(fontSize: 28),textAlign: TextAlign.center,),
            SizedBox(width: 250,height: 50,
              child: ElevatedButton(
                child: Text("START"),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => QuizEkrani()));
                },
              ),
            ),
          ],
        ),
      ),
      
    );
  }
}
