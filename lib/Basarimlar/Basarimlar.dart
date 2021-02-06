import 'package:Forest/Applicationbar/ApplicationBar.dart';
import 'package:Forest/Applicationbar/DrawerState.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Basarimlar extends StatefulWidget {
  @override
  _BasarimlarState createState() => _BasarimlarState();
}

class _BasarimlarState extends State<Basarimlar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ApplicationBar(Color(0xff329D9C), Colors.white,"BAŞARIMLAR",Colors.white),
      drawer: DrawerState(),
      body: ListView(shrinkWrap: true,children: [Column(children: [
        SizedBox(height: 15,),
        KartItem("firstDay", "İLK BAKIŞ",Color(0xff329D9C), "Başlangıç işin yarısı eder.",0),
          KartItem("week", "İLK HAFTA", Color(0xff329D9C), "Acemi adımlar tecrübeyi bulur.",1),
            KartItem("Month", "İLK AY", Color(0xff329D9C), "Zorlu Yolun zorlu çocuğu",1),
              KartItem("medal", "ZORLU BAŞLANGIÇ", Color(0xff329D9C), "Günlük 5 saat herkesin harcı değildir",0),
      ],)],),
    );
  }

  KartItem(String asset,String title,Color titleColor,String subtitle,int a) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Card(
        color:   Color(0XFFC6E7F3),
        elevation: 15,
        shadowColor: Colors.green,
        child: ListTile(
          leading: Image.asset("images/"+asset+".png"),
          title: Text(title,style: GoogleFonts.montserrat(fontWeight: FontWeight.bold,color:titleColor , ),),
          trailing: Icon(Icons.check_circle,color:a%2==0?Colors.green:Colors.transparent,),
          subtitle:Text(subtitle,style: GoogleFonts.montserrat(color:Color(0xff329D9C),) ,)
        ),
      ),
    );
  }
}
