import 'package:Forest/Applicationbar/ApplicationBar.dart';
import 'package:Forest/Applicationbar/DrawerState.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Test extends StatefulWidget {
  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  List<bool> liste;
  @override
  void initState() {
    super.initState();
    setState(() {
      liste = [false, false, false, false, false];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ApplicationBar(
          Color(0XFFC6E7F3), Color(0xff329D9C), "TEST EKRANI", Color(0xff329D9C),),
      drawer: DrawerState(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Soru(
                "Yaratıcılığına güvenir misin? Sorunlar çıktığında bunlarla baş etmede yeni fikirler öne sürer misin?"),
            SizedBox(
              height: 50,
            ),
            CevapContainerA("Çok Fazla"),
            SizedBox(
              height: 20,
            ),
            CevapContainerB("Fazla"),
            SizedBox(
              height: 20,
            ),
            CevapContainerC("Normal"),
            SizedBox(
              height: 20,
            ),
            CevapContainerD("Az"),
            SizedBox(
              height: 20,
            ),
            CevapContainerE("Çok Az"),
            SizedBox(
              height: 60,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                    icon: Icon(Icons.arrow_back_ios,size: 40,),
                    color: Colors.white,
                    onPressed: () {}),
                IconButton(
                    icon: Icon(Icons.arrow_forward_ios,size: 40,),color: Colors.white, onPressed: () {}),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Soru(String soru) {
    return Container(
      height: 80,
      width: 324,
      child: new AutoSizeText(soru,
          maxLines: 3,
          style:
              GoogleFonts.montserrat(color: Color(0xff329D9C), fontSize: 20)),
    );
  }

  CevapContainerA(String cevap) {
    return GestureDetector(
      onTap: () {
        setState(() {
          liste.fillRange(0, 5, false);
          liste[0] = true;
        });
      },
      child: new Container(
        height: 40.00,
        width: 300.00,
        decoration: BoxDecoration(
          color: Color(0xffffffff),
          border: Border.all(
            width: 4.00,
            color: liste[0] ? Colors.green : Color(0xff707070),
          ),
          boxShadow: [
            BoxShadow(
              offset: Offset(10.00, 15.00),
              color: Color(0xff000000).withOpacity(0.16),
              blurRadius: 6,
            ),
          ],
          borderRadius: BorderRadius.circular(15.00),
        ),
        child: Center(
          child: Cevap(cevap),
        ),
      ),
    );
  }

  CevapContainerB(String cevap) {
    return GestureDetector(
      onTap: () {
        setState(() {
          liste.fillRange(0, 5, false);
          liste[1] = true;
        });
      },
      child: new Container(
        height: 40.00,
        width: 300.00,
        decoration: BoxDecoration(
          color: Color(0xffffffff),
          border: Border.all(
            width: 4.00,
            color: liste[1] ? Colors.green : Color(0xff707070),
          ),
          boxShadow: [
            BoxShadow(
              offset: Offset(10.00, 15.00),
              color: Color(0xff000000).withOpacity(0.16),
              blurRadius: 6,
            ),
          ],
          borderRadius: BorderRadius.circular(15.00),
        ),
        child: Center(
          child: Cevap(cevap),
        ),
      ),
    );
  }

  CevapContainerC(String cevap) {
    return GestureDetector(
      onTap: () {
        setState(() {
          liste.fillRange(0, 5, false);
          liste[2] = true;
        });
      },
      child: new Container(
        height: 40.00,
        width: 300.00,
        decoration: BoxDecoration(
          color: Color(0xffffffff),
          border: Border.all(
            width: 4.00,
            color: liste[2] ? Colors.green : Color(0xff707070),
          ),
          boxShadow: [
            BoxShadow(
              offset: Offset(10.00, 15.00),
              color: Color(0xff000000).withOpacity(0.16),
              blurRadius: 6,
            ),
          ],
          borderRadius: BorderRadius.circular(15.00),
        ),
        child: Center(
          child: Cevap(cevap),
        ),
      ),
    );
  }

  CevapContainerD(String cevap) {
    return GestureDetector(
      onTap: () {
        setState(() {
          liste.fillRange(0, 5, false);
          liste[3] = true;
        });
      },
      child: new Container(
        height: 40.00,
        width: 300.00,
        decoration: BoxDecoration(
          color: Color(0xffffffff),
          border: Border.all(
            width: 4.00,
            color: liste[3] ? Colors.green : Color(0xff707070),
          ),
          boxShadow: [
            BoxShadow(
              offset: Offset(10.00, 15.00),
              color: Color(0xff000000).withOpacity(0.16),
              blurRadius: 6,
            ),
          ],
          borderRadius: BorderRadius.circular(15.00),
        ),
        child: Center(
          child: Cevap(cevap),
        ),
      ),
    );
  }

  CevapContainerE(String cevap) {
    return GestureDetector(
      onTap: () {
        setState(() {
          liste.fillRange(0, 5, false);
          liste[4] = true;
        });
      },
      child: new Container(
        height: 40.00,
        width: 300.00,
        decoration: BoxDecoration(
          color: Color(0xffffffff),
          border: Border.all(
            width: 4.00,
            color: liste[4] ? Colors.green : Color(0xff707070),
          ),
          boxShadow: [
            BoxShadow(
              offset: Offset(10.00, 15.00),
              color: Color(0xff000000).withOpacity(0.16),
              blurRadius: 6,
            ),
          ],
          borderRadius: BorderRadius.circular(15.00),
        ),
        child: Center(
          child: Cevap(cevap),
        ),
      ),
    );
  }

  Cevap(String cevap) {
    return new Text(cevap,
        style: GoogleFonts.montserrat(
          fontWeight: FontWeight.w900,
          fontSize: 15,
          color: Color(0xff329d9c),
        ));
  }
}
