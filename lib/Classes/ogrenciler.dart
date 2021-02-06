import 'package:flutter/material.dart';

class ogrenciler {
  Image avatar = Image(image: AssetImage("images/fizik.png"));
  String ad;
  String soyad;
  String anlikDers;
  bool AnlikGorev;
  String calisilanSaat;
  ogrenciler(
      this.ad, this.soyad, this.anlikDers, this.AnlikGorev, this.calisilanSaat);
}
