import 'package:Forest/Applicationbar/ApplicationBar.dart';
import 'package:Forest/Applicationbar/DrawerState.dart';
import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pie_chart/pie_chart.dart';

class istatistikler extends StatefulWidget {
  @override
  _istatistiklerState createState() => _istatistiklerState();
}

class _istatistiklerState extends State<istatistikler> {
  final Map<String, double> EncokCaslisilanDers = {
    "Fizik":20,
    "Geometri":35,
    "Matematik":40,
  };
  final Map<String, double> EncokCaslisilanKonu= {
    "Kuvvet Hareket":20,
    "Limit":35,
    "Türev":40,
  };
  final Map<String, double> EncokCaslismaTarzi = {
    "Konu Anlatım":40,
    "Test Çözmek":20,
    "Diğer":15,
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ApplicationBar(Color(0XFFC6E7F3),Color(0xff329D9C),"İSTATİSTİKLER",Colors.white),
      drawer: DrawerState(),
      body: ListView(
        shrinkWrap: true,
        children: [
          BackGroundContainer(),
          SizedBox(
            height: 10,
          ),
          TumIstatistiklerBaslik(),
          TumistatistiklerCard( "En çok Çalışılan Ders", "images/EnCokCalisilanDers.png",EncokCaslisilanDers),
          TumistatistiklerCard( "En çok Çalışılan konu", "images/EnCokCalisilanKonu.png",EncokCaslisilanKonu),
          TumistatistiklerCard( "En çok Çalışma Tarzı", "images/EncokCalismaTarzi.png",EncokCaslismaTarzi),
        ],
      ),
    );
  }
  PiechartDersler(Map<String,double> IstatistikList){
    return PieChart(
      dataMap: IstatistikList,
      chartLegendSpacing: 15,
      animationDuration: Duration(milliseconds: 800),
      chartRadius:
      MediaQuery.of(context).size.width / 2.2,
      showChartValuesInPercentage: true,
      showChartValues: true,
      showChartValuesOutside: true,
      chartValueBackgroundColor: Colors.grey[200],
      showLegends: true,
      legendPosition: LegendPosition.right,
      decimalPlaces: 1,
      showChartValueLabel: true,
      chartType: ChartType.disc,
    );
  }
  BackGroundContainer() {
    return new Container(
        height: 450.00,
        width: 418.00,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("images/arkaDag.png"),fit: BoxFit.contain,alignment: Alignment.bottomCenter),
          color: Color(0XFFC6E7F3),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(40.00),
            bottomRight: Radius.circular(40.00),
            
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
           // Baslik(),
           SizedBox(height: 20,),
            BackGroundIcContainer(),
          ],
        ));
  }

  BackGroundIcContainer() {
    return Align(
      child: Container(
        height: 200.00,
        width: 200.00,
        decoration: BoxDecoration(
         image: DecorationImage(image: AssetImage("images/reload.png")),
        ),
        child: FittedBox(fit:BoxFit.scaleDown,child: Text("186",style: GoogleFonts.montserrat(fontWeight: FontWeight.bold,fontSize: 70,color: Color(0xff205072),
        ))),
        
      ),
    );
  }

  Baslik() {
    return new Text(
      "KALAN GÜN: 186 GÜN",
      style: GoogleFonts.montserrat(
          fontSize: 21, color: Color(0xff329D9C), fontWeight: FontWeight.w500),
    );
  }

  Baslikisa() {
    return new Text(
      "Genel Bilgiler",
      textAlign: TextAlign.center,
      style: GoogleFonts.montserrat(
          fontSize: 14, color: Color(0xff47cacc), fontWeight: FontWeight.w500),
    );
  }

  Encok(String text) {
    return Container(
      height: 20,
      width: 300,
      child: new Text(
        text,
        style: GoogleFonts.montserrat(
          fontSize: 15,
          color: Color(0xff329D9C),
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
  BaslikIstatistik(String text) {
    return Container(
      height: 20,
      width: 300,
      child: new Text(
        text,
        style: GoogleFonts.montserrat(
          fontSize: 15,
          color: Colors.blue
        ),
        textAlign: TextAlign.center,
      ),
    );
  }

  EncokSonuc(String text) {
    return new Text(
      text,
      style: GoogleFonts.montserrat(
        fontSize: 12,
        color: Color(0xff6236ff),
      ),
    );
  }

  TumIstatistiklerBaslik() {
    return new Text(
      "Tüm İstatistikler",
      style: TextStyle(
        fontFamily: "Montserrat-Bold",
        fontSize: 25,
        color: Color(0xff329D9C),
      ),
      textAlign: TextAlign.center,
    );
  }

  // En çok çalışılan ders
  // EN çok Çalışma Tarzı
  // En çok Çalışılan Konu
  // Günlük Maksimum Çalışılan Saat
  TumistatistiklerCard(String title, String asset, Map<String,double> dersler) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ExpansionTileCard(
        elevation: 15,
        initialElevation: 15,
        shadowColor: Color(0xff329D9C),
        leading: CircleAvatar(
          child: Image.asset(asset),
          backgroundColor: Colors.transparent,
        ),
        expandedColor:Colors.white,
        title: Encok(title,),
        subtitle: Text("İstatistikleri Görmek İçin Tıklayınız",style: GoogleFonts.montserrat(color:Color(0xff329D9C),),),
        children: [
          PiechartDersler(dersler)
        ],
      ),
    );
  }
}
