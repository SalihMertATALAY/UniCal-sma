import 'package:Forest/Applicationbar/ApplicationBar.dart';
import 'package:Forest/Applicationbar/DrawerState.dart';
import 'package:Forest/Classes/ogrenciler.dart';
import 'package:data_tables/data_tables.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class Arkadaslar extends StatefulWidget {
  @override
  _ArkadaslarState createState() => _ArkadaslarState();
}

class _ArkadaslarState extends State<Arkadaslar> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ApplicationBar(Color(0xff329D9C),Color(0xff329D9C),"ARKADAŞLAR",Color(0xff329D9C)),
      drawer: DrawerState(),
      body: Align(
        alignment: Alignment.center,
        child: Center(
          child: _dataTable(),
        ),
      ),
    );
  }
}

ListView _dataTable() {
  return ListView(
    scrollDirection: Axis.horizontal,
      children: [
         DataTable(columns: [
      DataColumn(label: Text("Avatar",style: GoogleFonts.montserrat(fontWeight: FontWeight.bold,color: Color(0xff329D9C)))),
      DataColumn(label: Text("İsim",style: GoogleFonts.montserrat(fontWeight: FontWeight.bold,color: Color(0xff329D9C)))),
      DataColumn(label: Text("Soyisim",style: GoogleFonts.montserrat(fontWeight: FontWeight.bold,color: Color(0xff329D9C)))),
      DataColumn(label: Text("Ders",style: GoogleFonts.montserrat(fontWeight: FontWeight.bold,color: Color(0xff329D9C)))),
      DataColumn(label: Text("Sonuç",style: GoogleFonts.montserrat(fontWeight: FontWeight.bold,color: Color(0xff329D9C)))),
      DataColumn(label: Text("Günlük Saat",style: GoogleFonts.montserrat(fontWeight: FontWeight.bold,color: Color(0xff329D9C)))),
    ], rows: [
      DataRow(cells: [
        DataCell(Avatar("InstagramPhoto.jpg",20)),
        DataCell(Text("Salih Mert",style: GoogleFonts.montserrat(fontWeight: FontWeight.w400,color: Color(0xff329D9C)))),
        DataCell(Text("ATALAY",style: GoogleFonts.montserrat(fontWeight: FontWeight.w400,color: Color(0xff329D9C)))),
        DataCell(Row(
          children: [
            Avatar("matematik.png",15),
            Text("Matematik",style: GoogleFonts.montserrat(fontWeight: FontWeight.w400,color: Color(0xff329D9C))),
          ],
        )),
        DataCell(Text("Hedefe Ulaştı",style: GoogleFonts.montserrat(fontWeight: FontWeight.w400,color: Color(0xff329D9C)))),
        DataCell(Text("04.06",style: GoogleFonts.montserrat(fontWeight: FontWeight.w400,color: Color(0xff329D9C)))),
      ]),
       DataRow(cells: [
        DataCell(Avatar("InstagramPhoto.jpg",20)),
        DataCell(Text("Salih Mert",style: GoogleFonts.montserrat(fontWeight: FontWeight.w400,color: Color(0xff329D9C)))),
        DataCell(Text("ATALAY",style: GoogleFonts.montserrat(fontWeight: FontWeight.w400,color: Color(0xff329D9C)))),
        DataCell(Row(
          children: [
            Avatar("matematik.png",15),
            Text("Matematik",style: GoogleFonts.montserrat(fontWeight: FontWeight.w400,color: Color(0xff329D9C))),
          ],
        )),
        DataCell(Text("Hedefe Ulaştı",style: GoogleFonts.montserrat(fontWeight: FontWeight.w400,color: Color(0xff329D9C)))),
        DataCell(Text("04.06",style: GoogleFonts.montserrat(fontWeight: FontWeight.w400,color: Color(0xff329D9C)))),
      ]),
       DataRow(cells: [
        DataCell(Avatar("InstagramPhoto.jpg",20)),
        DataCell(Text("Salih Mert",style: GoogleFonts.montserrat(fontWeight: FontWeight.w400,color: Color(0xff329D9C)))),
        DataCell(Text("ATALAY",style: GoogleFonts.montserrat(fontWeight: FontWeight.w400,color: Color(0xff329D9C)))),
        DataCell(Row(
          children: [
            Avatar("matematik.png",15),
            Text("Matematik",style: GoogleFonts.montserrat(fontWeight: FontWeight.w400,color: Color(0xff329D9C))),
          ],
        )),
        DataCell(Text("Hedefe Ulaştı",style: GoogleFonts.montserrat(fontWeight: FontWeight.w400,color: Color(0xff329D9C)))),
        DataCell(Text("04.06",style: GoogleFonts.montserrat(fontWeight: FontWeight.w400,color: Color(0xff329D9C)))),
      ]),
       DataRow(cells: [
        DataCell(Avatar("InstagramPhoto.jpg",20)),
        DataCell(Text("Salih Mert",style: GoogleFonts.montserrat(fontWeight: FontWeight.w400,color: Color(0xff329D9C)))),
        DataCell(Text("ATALAY",style: GoogleFonts.montserrat(fontWeight: FontWeight.w400,color: Color(0xff329D9C)))),
        DataCell(Row(
          children: [
            Avatar("matematik.png",15),
            Text("Matematik",style: GoogleFonts.montserrat(fontWeight: FontWeight.w400,color: Color(0xff329D9C))),
          ],
        )),
        DataCell(Text("Hedefe Ulaştı",style: GoogleFonts.montserrat(fontWeight: FontWeight.w400,color: Color(0xff329D9C)))),
        DataCell(Text("04.06",style: GoogleFonts.montserrat(fontWeight: FontWeight.w400,color: Color(0xff329D9C)))),
      ]),
       DataRow(cells: [
        DataCell(Avatar("InstagramPhoto.jpg",20)),
        DataCell(Text("Salih Mert",style: GoogleFonts.montserrat(fontWeight: FontWeight.w400,color: Color(0xff329D9C)))),
        DataCell(Text("ATALAY",style: GoogleFonts.montserrat(fontWeight: FontWeight.w400,color: Color(0xff329D9C)))),
        DataCell(Row(
          children: [
            Avatar("matematik.png",15),
            Text("Matematik",style: GoogleFonts.montserrat(fontWeight: FontWeight.w400,color: Color(0xff329D9C))),
          ],
        )),
        DataCell(Text("Hedefe Ulaştı",style: GoogleFonts.montserrat(fontWeight: FontWeight.w400,color: Color(0xff329D9C)))),
        DataCell(Text("04.06",style: GoogleFonts.montserrat(fontWeight: FontWeight.w400,color: Color(0xff329D9C)))),
      ]),
       DataRow(cells: [
        DataCell(Avatar("InstagramPhoto.jpg",20)),
        DataCell(Text("Salih Mert",style: GoogleFonts.montserrat(fontWeight: FontWeight.w400,color: Color(0xff329D9C)))),
        DataCell(Text("ATALAY",style: GoogleFonts.montserrat(fontWeight: FontWeight.w400,color: Color(0xff329D9C)))),
        DataCell(Row(
          children: [
            Avatar("matematik.png",15),
            Text("Matematik",style: GoogleFonts.montserrat(fontWeight: FontWeight.w400,color: Color(0xff329D9C))),
          ],
        )),
        DataCell(Text("Hedefe Ulaştı",style: GoogleFonts.montserrat(fontWeight: FontWeight.w400,color: Color(0xff329D9C)))),
        DataCell(Text("04.06",style: GoogleFonts.montserrat(fontWeight: FontWeight.w400,color: Color(0xff329D9C)))),
      ]),
      
    ]),
    
      ],
  );
}
 Avatar(String asset,double boyut) {
    return new CircleAvatar(
      backgroundColor: Colors.transparent,
      radius: boyut,
      backgroundImage: AssetImage("images/"+asset),
    );
  }
  
/*StudentData() {
    Ogrenciler.add(
        new ogrenciler("Salih Mert", "ATALAY", "Fizik", true, "04.36"));
    Ogrenciler.add(
        new ogrenciler("Alperen", "Aşçı", "Matematik", true, "03.24"));
    Ogrenciler.add(new ogrenciler("Emre", "Uysal", "edebiyat", false, "06.08"));
    Ogrenciler.add(new ogrenciler("Burak", "Oras", "Biyoloji", false, "02.15"));
    Ogrenciler.add(new ogrenciler("Soner", "Aslan", "Kimya", true, "08.17"));
    Ogrenciler.add(
        new ogrenciler("Salih Mert", "ATALAY", "Fizik", true, "04.36"));
    Ogrenciler.add(
        new ogrenciler("Alperen", "Aşçı", "Matematik", true, "03.24"));
    Ogrenciler.add(new ogrenciler("Emre", "Uysal", "edebiyat", false, "06.08"));
    Ogrenciler.add(new ogrenciler("Burak", "Oras", "Biyoloji", false, "02.15"));
    Ogrenciler.add(new ogrenciler("Soner", "Aslan", "Kimya", true, "08.17"));
  }*/
