import 'package:flutter/material.dart';
import 'package:tasarim_calismasi/renkler.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({super.key});

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

//left - start - leading
//right - end - trailing
class _AnasayfaState extends State<Anasayfa> {
  @override
  Widget build(BuildContext context) {
    var ekranBilgisi = MediaQuery.of(context);
    final double ekranYuksekligi = ekranBilgisi.size.height;
    final double ekranGenisligi = ekranBilgisi.size.width;
    print("Ekran Yüksekliği : ${ekranYuksekligi}");
    print("Ekran Genişliği : ${ekranGenisligi}");

    var d = AppLocalizations.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("Pizza", style: TextStyle(color: yaziRenk1,fontFamily:"Pacifico",fontSize: ekranGenisligi/19),),
        backgroundColor: anaRenk,
        centerTitle: true,),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 32 ), // ekranYuksekligi/54
            child: Text(d!.pizzaBaslik,style: TextStyle(fontSize: 36,color: anaRenk,fontWeight: FontWeight.bold),),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 32),
            child: Image.asset("resimler/pizza_resim.png"),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 32),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:[
                Chip(icerik: d.peynirYazi),
                Chip(icerik: d.sucukYazi),
                Chip(icerik: d.zeytinYazi),
                Chip(icerik: d.biberYazi),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Text(d.teslimatSure,style: TextStyle(fontSize: 22,color: yaziRenk2,fontWeight: FontWeight.bold),),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(d.teslimatBaslik,style: TextStyle(fontSize: 22,color: anaRenk,fontWeight: FontWeight.bold),),
                ),
                Text(d.pizzaAciklama,
                  style: TextStyle(fontSize: 22,color: yaziRenk2,),textAlign: TextAlign.center,),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(d.fiyat,style: TextStyle(fontSize: 44,color: anaRenk,fontWeight: FontWeight.bold),),
                const Spacer(),
                SizedBox(width: ekranGenisligi/2,height: ekranYuksekligi/16,
                  child: TextButton(onPressed: (){},
                      child: Text(d.buttonYazi,style: TextStyle(color: yaziRenk1,fontSize: 18),),
                      style: TextButton.styleFrom(
                          backgroundColor: anaRenk,
                          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5))),
                      ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Chip extends StatelessWidget {
  String icerik;
  Chip({required this.icerik});

  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: (){},
        child: Text(icerik,style: TextStyle(color: yaziRenk1),),
        style: TextButton.styleFrom(backgroundColor: anaRenk )
    );
  }
}

