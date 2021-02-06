import 'package:Forest/AnimationTransition/AnimationTransition.dart';
import 'package:Forest/Applicationbar/ApplicationBar.dart';
import 'package:Forest/Applicationbar/DrawerState.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:Forest/Universiteler/UniversiteBilgi.dart';

class Universiteler extends StatefulWidget {
  @override
  _UniversitelerState createState() => _UniversitelerState();
}

class _UniversitelerState extends State<Universiteler> {
  String AguGenel =
      "     21 Temmuz 2010 tarihli ve 27648 Sayılı Resmi Gazete’de yayımlanan Yükseköğretim Kurumları Teşkilatı Kanunu ile Bazı Kanun ve kanun Hükmünde Kararnamelerde Değişiklik Yapılmasına Dair Kanun (Kanun no:6005) kapsamında Kayseri’de Kayseri Abdullah Gül Üniversitesi adıyla yeni bir üniversite kuruldu.\n" +
          "     13 Temmuz 2011 tarihli 27993 Sayılı Resmi Gazete’de Abdullah Gül Üniversitesini Destekleme Vakfı’nın kurulduğu ilan edildi.\n" +
          "     04.01.2013 itibarıyla Prof. Dr. İhsan Sabuncuoğlu Abdullah Gül Üniversitesi Rektörü olarak göreve atanmış ve 15 Ocak 2013 tarihinde de görevine başlamıştır.\n";
  List<String> Fakulteler = [
    "Mühendislik Fakültesi",
    "Bilgisayar Mühendisliği",
    "Elektrik-Elektronik Mühendisliği",
    "Endüstri Mühendisliği",
    "İnşaat Mühendisliği",
    "Makine Mühendisliği",
    "Malzeme Bilimi ve Nanoteknoloji",
    "Mimarlık Fakültesi",
    "Mimarlık",
    "Yönetim Bilimleri Fakültesi",
    "İşletme",
    "İnsan ve Toplum Bilimleri Fakültesi",
    "Eğitim Bilimleri Fakültesi",
    "Yaşam ve Doğa Bilimleri Fakültesi",
    "Moleküler biyoloji ve genetik"
  ];
  TextEditingController _controller = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ApplicationBar(
          Color(0xff329D9C), Colors.white, "ÜNİVERSİTELER", Colors.white),
      drawer: DrawerState(),
      body: ListView(
        shrinkWrap: true,
        children: <Widget>[
          SearchCustomer(),
          KardItem("Abdullah Gül Üniversitesi", "Kayseri", "26", "agu"),
          KardItem("Bilkent Üniversitesi", "Ankara", "9", "agu"),
          KardItem("Koç Üniversitesi", "İstanbul", "5", "agu"),
          KardItem("İstanbul Teknik Üniversitesi", "İstanbul", "3", "agu"),
        ],
      ),
    );
  }

  SearchCustomer() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: new Container(
        height: AnimationTranstion.uzunlukFonksiyonu(40, context),
        width: AnimationTranstion.genislikFonksiyonu(360, context),
        decoration: BoxDecoration(
          color: Color(0xffffffff),
          border: Border.all(
            width: 2.00,
            color: Color(0xff329D9C),
          ),
          borderRadius: BorderRadius.circular(15.00),
        ),
        child: Center(
          child: TextField(
            inputFormatters: [
              LengthLimitingTextInputFormatter(100),
            ],
            controller: _controller,
            decoration: InputDecoration(
              fillColor: Color(0xff329D9C),
              focusColor: Color(0xff329D9C),
              hoverColor: Color(0xff329D9C),
                icon: new Icon(Icons.search),
                border: InputBorder.none,
                hintText: "Arama Çubuğu"),
          ),
        ),
      ),
    );
  }

  KardItem(String Unisim, String sehir, String numara, String resim) {
    return GestureDetector(
      onTap: () {
        AnimationTranstion.AnimationPushWidget_LeftToRight(
            UniversiteBilgi(
                Unisim,
                "images/$resim.jpg",
                Text(
                  AguGenel,
                  textAlign: TextAlign.left,
                  style: GoogleFonts.montserrat(color:  Color(0xff329D9C),),
                ),Fakulteler),
            context);
      },
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Card(
          color:  Color(0XFFC6E7F3),
          shadowColor: Color(0xff329D9C),
          elevation: 12,
          child: ListTile(
            title: Text(
              Unisim,
              style: GoogleFonts.montserrat(color: Color(0xff329D9C),),
            ),
            trailing: Container(
              height: 80,
              width: 80,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("images/reload.png"),
                    fit: BoxFit.fitHeight),
              ),
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  numara,
                  style: GoogleFonts.montserrat(
                      color:  Color(0xff329D9C), fontWeight: FontWeight.bold),
                ),
              ),
            ),
            subtitle: Text(
              "Şehir: $sehir",
              style: GoogleFonts.montserrat(color:  Color(0xff329D9C),),
            ),
          ),
        ),
      ),
    );
  }
}
