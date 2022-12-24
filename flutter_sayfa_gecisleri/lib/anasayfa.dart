import 'package:flutter/material.dart';
import 'package:flutter_sayfa_gecisleri/sayfa_a.dart';
import 'package:flutter_sayfa_gecisleri/sayfa_x.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({Key? key}) : super(key: key);

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Anasayfa"),),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(onPressed: (){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SayfaA()));
            }, child: const Text("Sayfa A'ya git.")),
            ElevatedButton(onPressed: () {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SayfaX()));
            }, child: const Text("Sayfa X'e git.")),
          ],
        ),
      ),
    );
  }
}
