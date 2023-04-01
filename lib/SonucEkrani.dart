import 'package:flutter/material.dart';

class SonucEkrani extends StatefulWidget {
  late int dogruSayisi;


  SonucEkrani({required this.dogruSayisi});

  @override
  State<SonucEkrani> createState() => _SonucEkraniState();
}

class _SonucEkraniState extends State<SonucEkrani> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sonuç Ekranı"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("${widget.dogruSayisi} Doğru ${5-widget.dogruSayisi} Yanlış",style: TextStyle(fontSize: 30),),
            Text("% ${((widget.dogruSayisi*100/5).toInt())} BAŞARI",style: TextStyle(fontSize: 30,color: Colors.pink),),
            SizedBox(
              height: 50,width: 250,
              child: ElevatedButton(
                child: Text("TEKRAR DENE"),
                onPressed: (){
                  Navigator.pop(context);


                },
              ),
            ),

          ],
        ),
      ),

    );
  }
}
