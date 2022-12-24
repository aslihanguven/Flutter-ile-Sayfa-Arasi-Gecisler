import 'package:flutter/material.dart';
import 'package:flutter_sayfa_gecisleri/anasayfa.dart';

class SayfaY extends StatefulWidget {
  const SayfaY({Key? key}) : super(key: key);

  @override
  State<SayfaY> createState() => _SayfaYState();
}

class _SayfaYState extends State<SayfaY> {

  Future <bool> geriTusu(BuildContext context) async{
    return true;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Sayfa Y"),),
      body: WillPopScope( onWillPop: () => geriTusu(context),
        child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(onPressed: (){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const Anasayfa()));
            }, child: const Text("Anasayfaya Git")),
          ],
        ),
      ),
    );
  }
}
