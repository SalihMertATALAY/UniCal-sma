import 'package:Forest/AnimationTransition/AnimationTransition.dart';
import 'package:Forest/Applicationbar/ApplicationBar.dart';
import 'package:Forest/Applicationbar/DrawerState.dart';
import 'package:Forest/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DersEkleme extends StatefulWidget {
  @override
  _DersEklemeState createState() => _DersEklemeState();
}

class _DersEklemeState extends State<DersEkleme> {
  TimeOfDay timeOfDay = TimeOfDay.now();
  bool ChooseTimeBool = false;
  String currentDers, currentKonu, currentYardimciKonu, currentYapilcakIs;
  List<String> DersResimleri = [
    "images/geometri.png",
    "images/fizik.png",
    "images/matematik.png"
  ];
  List<String> DersIsimleri = ["Geometri", "Fizik", "Matematik"];
  List<String> DersKonulari = ["Üçgende Açılar", "Kuvvet Ve Hareket", "Türev"];
  List<String> DersTarzi = ["Konu Anlatımı", "Test Çözmek", "Diğer"];
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ApplicationBar(
          Color(0xff329D9C), Colors.white, "DERS SEÇİMi", Colors.white),
      drawer: DrawerState(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 30,
            ),
            Baslik(),
            SizedBox(
              height: 90,
            ),
            DersBaslik("Ders Seçin"),
            SizedBox(
              height: 15,
            ),
            DersDropdown(),
            SizedBox(
              height: 15,
            ),
            DersBaslik("Konu Seçin"),
            SizedBox(
              height: 15,
            ),
            KonuDropdown(),
            SizedBox(
              height: 15,
            ),
            DersBaslik("Ara Konu Seçin"),
            SizedBox(
              height: 15,
            ),
            AraKonu(),
            SizedBox(
              height: 15,
            ),
            DersBaslik("Çalışma Tarzı"),
            SizedBox(
              height: 15,
            ),
            YapilcakIs(),
            SizedBox(
              height: 70,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [IptalButon(), BaslatButon()],
            )
          ],
        ),
      ),
    );
  }

  Baslik() {
    return new Text(
      "Çalışma Planı",
      style: GoogleFonts.montserrat(
        fontSize: 25,
        color: Color(0xff205072),
      ),
    );
  }

  Future<Null> ChooseTime(BuildContext context) async {
    TimeOfDay picked = await showTimePicker(
      initialTime: TimeOfDay.now(),
      context: context,
    );
    setState(() {
      timeOfDay = picked;
      ChooseTimeBool = true;
    });
  }

  IptalButon() {
    return GestureDetector(
      onTap: () {
        ChooseTime(context);
      },
      child: new Container(
        height: 48.00,
        width: 174.00,
        decoration: BoxDecoration(
          color: Color(0xff205072),
          boxShadow: [
            BoxShadow(
              offset: Offset(21.00, 21.00),
              color: Color(0xff000000).withOpacity(0.16),
              blurRadius: 55,
            ),
          ],
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15.00),
            bottomLeft: Radius.circular(25.00),
          ),
        ),
        child: Align(
          child: new Text(
            "Plana Ekle",
            textAlign: TextAlign.center,
            style: GoogleFonts.montserrat(
              fontSize: 21,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }

  BaslatButon() {
    return GestureDetector(
      onTap: () {
        HomePage.zaman = true;
        AnimationTranstion.AnimationPushWidget_DownToUp(HomePage(), context);
      },
      child: new Container(
        height: 48.00,
        width: 174.00,
        decoration: BoxDecoration(
          color: Color(0xff56C596),
          boxShadow: [
            BoxShadow(
              offset: Offset(21.00, 21.00),
              color: Color(0xff000000).withOpacity(0.16),
              blurRadius: 55,
            ),
          ],
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(15.00),
            bottomRight: Radius.circular(25.00),
          ),
        ),
        child: Align(
          alignment: Alignment.center,
          child: new Text(
            "Başlat",
            style: GoogleFonts.montserrat(
              fontSize: 21,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }

  DersBaslik(String Ders) {
    return new Text(
      Ders,
      style: TextStyle(
        fontFamily: "Montserrat-Bold",
        fontSize: 18,
        fontWeight: FontWeight.w700,
        color: Color(0xff205072),
      ),
    );
  }

  DersDropdown() {
    return new Container(
      height: 40.00,
      width: 300.00,
      decoration: BoxDecoration(
        color: Color(0xffffffff),
        border: Border.all(
          width: 1.00,
          color: Color(0xff56c596),
        ),
        boxShadow: [
          BoxShadow(
            offset: Offset(34.00, 34.00),
            color: Color(0xff329d9c).withOpacity(0.08),
            blurRadius: 89,
          ),
        ],
        borderRadius: BorderRadius.circular(21.00),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: DropdownButton(
          elevation: 5,
          isExpanded: true,
          value: currentDers,
          hint: new Text("Ders seçin"),
          icon: Icon(Icons.keyboard_arrow_down),
          onChanged: (newValue) {
            setState(() {
              currentDers = newValue;
              print(currentDers);
            });
          },
          items: DersIsimleri.map((String Ders) {
            return new DropdownMenuItem(
              value: Ders,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(height: 23, child: Image.asset(DersResimleri[2])),
                  new Text(
                    Ders,
                    style: new TextStyle(color: Colors.black),
                  ),
                  SizedBox(),
                ],
              ),
            );
          }).toList(),
        ),
      ),
    );
  }

  KonuDropdown() {
    return new Container(
      height: 40.00,
      width: 300.00,
      decoration: BoxDecoration(
        color: Color(0xffffffff),
        border: Border.all(
          width: 1.00,
          color: Color(0xff56c596),
        ),
        boxShadow: [
          BoxShadow(
            offset: Offset(34.00, 34.00),
            color: Color(0xff329d9c).withOpacity(0.08),
            blurRadius: 89,
          ),
        ],
        borderRadius: BorderRadius.circular(21.00),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: DropdownButton(
          elevation: 5,
          isExpanded: true,
          value: currentKonu,
          hint: new Text("Konu seçin"),
          icon: Icon(Icons.keyboard_arrow_down),
          onChanged: (newValue) {
            setState(() {
              currentKonu = newValue;
            });
          },
          items: DersKonulari.map((String Konu) {
            setState(() {
              currentKonu = Konu;
            });
            return new DropdownMenuItem(
              value: currentKonu,
              child: Center(
                child: new Text(
                  currentKonu,
                  style: new TextStyle(color: Colors.black),
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }

  AraKonu() {
    return new Container(
      height: 40.00,
      width: 300.00,
      decoration: BoxDecoration(
        color: Color(0xffffffff),
        border: Border.all(
          width: 1.00,
          color: Color(0xff56c596),
        ),
        boxShadow: [
          BoxShadow(
            offset: Offset(34.00, 34.00),
            color: Color(0xff329d9c).withOpacity(0.08),
            blurRadius: 89,
          ),
        ],
        borderRadius: BorderRadius.circular(21.00),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: DropdownButton(
          elevation: 5,
          isExpanded: true,
          value: currentYardimciKonu,
          hint: new Text("Yarcımcı Konuyu seçin"),
          icon: Icon(Icons.keyboard_arrow_down),
          onChanged: (newValue) {
            setState(() {
              currentYardimciKonu = newValue;
            });
          },
          items: DersKonulari.map((String Konu) {
            setState(() {
              currentYardimciKonu = Konu;
            });
            return new DropdownMenuItem(
              value: currentYardimciKonu,
              child: Center(
                child: new Text(
                  currentYardimciKonu,
                  style: new TextStyle(color: Colors.black),
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }

  YapilcakIs() {
    return new Container(
      height: 40.00,
      width: 300.00,
      decoration: BoxDecoration(
        color: Color(0xffffffff),
        border: Border.all(
          width: 1.00,
          color: Color(0xff56c596),
        ),
        boxShadow: [
          BoxShadow(
            offset: Offset(34.00, 34.00),
            color: Color(0xff329d9c).withOpacity(0.08),
            blurRadius: 89,
          ),
        ],
        borderRadius: BorderRadius.circular(21.00),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: DropdownButton(
          isExpanded: true,
          value: currentYapilcakIs,
          hint: new Text("Çalışma Tarzı"),
          icon: Icon(Icons.keyboard_arrow_down),
          onChanged: (newValue) {
            setState(() {
              currentYapilcakIs = newValue;
            });
          },
          items: DersTarzi.map((String Konu) {
            setState(() {
              currentYapilcakIs = Konu;
            });
            return new DropdownMenuItem(
              value: currentYapilcakIs,
              child: Center(
                child: new Text(
                  currentYapilcakIs,
                  style: new TextStyle(color: Colors.black),
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
