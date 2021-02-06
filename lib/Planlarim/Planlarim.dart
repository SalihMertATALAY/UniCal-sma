import 'package:Forest/AnimationTransition/AnimationTransition.dart';
import 'package:Forest/Applicationbar/ApplicationBar.dart';
import 'package:Forest/Applicationbar/DrawerState.dart';
import 'package:Forest/HomePage.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Planlarim extends StatefulWidget {
  @override
  _PlanlarimState createState() => _PlanlarimState();
}

class _PlanlarimState extends State<Planlarim> {
  bool ContainerBool = true;
  List<Color> Renkler = [
    Color(0xfff75010),
    Color(0xff47cacc),
    Color(0xfff7b500)
  ];
  List<String> DersResimleri = [
    "images/geometri.png",
    "images/fizik.png",
    "images/matematik.png"
  ];
  List<String> DersIsimleri = ["Geometri", "Fizik", "Matematik"];
  List<String> DersKonulari = ["Üçgende Açılar", "Kuvvet Ve Hareket", "Türev"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ApplicationBar(
         Color(0XFFC6E7F3),Colors.white, "PLANLARIM",  Color(0xff205072),),
      drawer: DrawerState(),
      body: ListView(
        shrinkWrap: true,
        children: [
          Column(
            children: [
              BackGroundContainer(),
              SizedBox(
                height: 25,
              ),
              BugunCalisilacakKonular(),
              SizedBox(
                height: 25,
              ),
              Container(
                height: 600,
                child: ListView.builder(
                  itemBuilder: (context, index) =>
                      ListContainer(context, index),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  BackGroundContainer() {
    return new Container(
      height: 290.00,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(40.00),
          bottomRight: Radius.circular(40.00),
        ),
      ),
      child: ContainerBool
          ? Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    MerhabaYazisi(),
                    Avatar(),
                  ],
                ),
                Center(
                  child: HedefBilgisi(),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    BilgiAlmakIcinContainer(),
                    SizedBox(
                      width: 20,
                    )
                  ],
                ),
              ],
            )
          : IcContainer(),
    );
  }

  IcContainer() {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("images/KocUni.jpeg"), fit: BoxFit.cover),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(40.00),
          bottomRight: Radius.circular(40.00),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            "KOÇ ÜNİVERSİTESİ",
            style: GoogleFonts.montserrat(
                color: Colors.white, fontSize: 30, fontWeight: FontWeight.w900),
          ),
          SizedBox(
            height: 110,
          ),
          Text(
            "BİLGİSAYAR MÜHENDİSLİĞİ",
            style: GoogleFonts.montserrat(color: Colors.white, fontSize: 20),
          )
        ],
      ),
    );
  }

  MerhabaYazisi() {
    return new AutoSizeText(
      "Merhaba Salih",
      style: TextStyle(
        fontFamily: "Montserrat-Bold",
        fontSize: 25,
        color: Color(0xff205072),
      ),
    );
  }

  HedefBilgisi() {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: new AutoSizeText(
        "Hedeflediğin üniversiteye gidenler nasıl kazanmış görmek ister misin? Onların yaptığı çalışmaları görerek sen de kendine yeni planlar çıkarabilirsin.",
        style: TextStyle(
          fontFamily: "Montserrat-Medium",
          fontSize: 13,
          color: Color(0xff68b2a0),
        ),
      ),
    );
  }

  BilgiAlmakIcinContainer() {
    return Align(
      alignment: Alignment.bottomRight,
      child: GestureDetector(
        onTap: () {
          setState(() {
            ContainerBool = false;
          });
        },
        child: new Container(
          height: 30.00,
          width: 116.00,
          decoration: BoxDecoration(
            color: Color(0xff205072),
            borderRadius: BorderRadius.circular(12.00),
          ),
          child: FittedBox(
            child: Text(
              "Bilgi Almak İçin",
              style: TextStyle(
                fontFamily: "Montserrat-Medium",
                fontSize: 13,
                color: Color(0xfffcfffc),
              ),
            ),
            fit: BoxFit.scaleDown,
          ),
        ),
      ),
    );
  }

  Avatar() {
    return new Container(
      height: 60.00,
      width: 60.00,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("images/InstagramPhoto.jpg"),
        ),
        border: Border.all(
          width: 3.09,
          color: Color(0xffffffff).withOpacity(0.13),
        ),
        boxShadow: [
          BoxShadow(
            offset: Offset(13.00, 13.00),
            color: Color(0xff205072).withOpacity(0.13),
            blurRadius: 21,
          ),
        ],
        borderRadius: BorderRadius.circular(27.50),
      ),
    );
  }

  BugunCalisilacakKonular() {
    return Row(
      children: [
        SizedBox(
          width: 22,
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: new Text(
            "Bugün Çalışılacak Konular",
            style: TextStyle(
              fontFamily: "Montserrat-Medium",
              fontSize: 17,
              color: Color(0xff205072),
            ),
            textAlign: TextAlign.left,
          ),
        ),
      ],
    );
  }

  ListContainer(BuildContext context, int index) {
    return Column(
      children: [
        ExpansionTileCard(
          initialPadding: EdgeInsets.fromLTRB(10, 0, 10, 0),
          initialElevation: 15,
          shadowColor: Colors.black,
          leading: DersResmi(index),
          title: DersIsim(index),
          subtitle: Row(
            children: [DersKonusu(index), CalisilacakDersSaati(index)],
          ),
          children: [
            ButtonBar(
              alignment: MainAxisAlignment.spaceAround,
              children: [
                FlatButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4.0)),
                  onPressed: () {},
                  child: Column(
                    children: <Widget>[
                      Icon(Icons.delete_forever),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 2.0),
                      ),
                      Text('Sil'),
                    ],
                  ),
                ),
                FlatButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4.0)),
                  onPressed: () {},
                  child: Column(
                    children: <Widget>[
                      Icon(Icons.change_history),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 2.0),
                      ),
                      Text('Düzenle'),
                    ],
                  ),
                ),
                FlatButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4.0)),
                  onPressed: () {
                    AnimationTranstion.AnimationPushWidget_LeftToRight(
                        HomePage(), context);
                  },
                  child: Column(
                    children: <Widget>[
                      Icon(Icons.not_started_outlined),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 2.0),
                      ),
                      Text('Başlat'),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
        SizedBox(
          height: 10,
        )
      ],
    );
  }

  DersIsim(int index) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        height: 20,
        width: 170,
        child: new Text(
          DersIsimleri[index % 3],
          style: TextStyle(
            fontFamily: "Montserrat-Medium",
            fontSize: 14,
            color: Color(0xff205072).withOpacity(0.34),
          ),
          textAlign: TextAlign.left,
        ),
      ),
    );
  }

  DersKonusu(int index) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        height: 20,
        width: 170,
        child: new Text(
          DersKonulari[index % 3],
          style: GoogleFonts.lato(
              color: Color(0xff205072),
              fontSize: 14,
              fontWeight: FontWeight.bold),
          textAlign: TextAlign.left,
        ),
      ),
    );
  }

  YapilacakIslem() {
    return Container(
      height: 20,
      width: 170,
      child: new Text(
        "Konu Tekrarı Yapılacaktır.",
        style: TextStyle(
          fontFamily: "Montserrat-Medium",
          fontSize: 12,
          color: Color(0xff205072).withOpacity(0.34),
        ),
        textAlign: TextAlign.left,
      ),
    );
  }

  DersResmi(int index) {
    return new Container(
      height: 40.00,
      width: 40.00,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(DersResimleri[index % 3]),
        ),
      ),
    );
  }

  CalisilacakDersSaati(int index) {
    return new Container(
      height: 30.00,
      width: 60.00,
      decoration: BoxDecoration(
        color: Renkler[index % 3],
        borderRadius: BorderRadius.circular(13.00),
      ),
      child: FittedBox(
        fit: BoxFit.scaleDown,
        child: new Text(
          "21.00-22.00",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: "Montserrat-Bold",
            color: Color(0xfffbfbfb),
          ),
        ),
      ),
    );
  }
}
