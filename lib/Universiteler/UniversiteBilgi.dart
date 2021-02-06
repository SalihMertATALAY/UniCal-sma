import 'package:Forest/Applicationbar/DrawerState.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UniversiteBilgi extends StatelessWidget {
  UniversiteBilgi(this.unisim, this.resim, this.genelYazi, this.fakulteler);
  String unisim;
  String resim;
  Text genelYazi;
  List<String> fakulteler;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              backgroundColor: Color(0XFFC6E7F3),
              expandedHeight: 300.0,
              floating: false,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  title: Text(unisim,
                      style: GoogleFonts.montserrat(color: Colors.white)),
                  background: Image.asset(
                    resim,
                    fit: BoxFit.cover,
                  )),
            ),
          ];
        },
        body: Column(
          children: <Widget>[
            SizedBox(
              height: 15,
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                child: genelYazi,
              ),
            ),
            Text(
              "FAKÜLTELER",
              style: GoogleFonts.montserrat(
                  color: Color(0xff329D9C), fontWeight: FontWeight.bold),
            ),
            Container(
                height: 600,
                child: ListView.builder(
                  itemBuilder: (context, index) =>
                      FakultelerText(context, index),
                  itemCount: fakulteler.length,
                )),
            SizedBox(
              height: 25,
            )
          ],
        ),
      ),
      drawer: DrawerState(),
    );
  }

  FakultelerText(BuildContext context, int index) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Card(
        elevation: 15,
        shadowColor:  Color(0XFFC6E7F3),
        color: Color(0xff329D9C),
        child: ListTile(
          title: Text(
            fakulteler[index],
            style: GoogleFonts.montserrat(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
