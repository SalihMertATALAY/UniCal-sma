import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import '../main.dart';

class AnimationTranstion {
  // Aşağıdan Yukarıya Geçen Animasyondur.
  static AnimationPushWidget_DownToUp(
      Widget CurrentPage, BuildContext context) {
    Navigator.push(context,
        PageTransition(type: PageTransitionType.downToUp, child: CurrentPage));
  }

  // Yukarıdan Aşağıya Geçen Animasyondur.
  static AnimationPushWidget_UptoDown(
      Widget CurrentPage, BuildContext context) {
    Navigator.push(context,
        PageTransition(type: PageTransitionType.downToUp, child: CurrentPage));
  }

  // Soldan Sağa Geçen Animasyondur.
  static AnimationPushWidget_LeftToRight(
      Widget CurrentPage, BuildContext context) {
    Navigator.push(context,
        PageTransition(type: PageTransitionType.downToUp, child: CurrentPage));
  }

  // Sağdan Sola Geçen Animasyondur.
  static AnimationPushWidget_RightToLeft(
      Widget CurrentPage, BuildContext context) {
    Navigator.push(context,
        PageTransition(type: PageTransitionType.downToUp, child: CurrentPage));
  }

  static uzunlukFonksiyonu(double sayi, BuildContext context) {
    double heightXiaomi = 803.6363636363636;
    double uzunluk = 0;
    if (MediaQuery.of(context).size.height >= heightXiaomi) {
      uzunluk = sayi;
    } else {
      uzunluk = (sayi * (MediaQuery.of(context).size.height)) / heightXiaomi;
    }

    return uzunluk;
  }

  static genislikFonksiyonu(double sayi, BuildContext context) {
    double genislik = 0;
    double widthXiaomi = 392.72727272727275;
    if (MediaQuery.of(context).size.width >= widthXiaomi) {
      genislik = sayi;
    } else {
      genislik = (sayi * (MediaQuery.of(context).size.width)) / widthXiaomi;
    }

    return genislik;
  }
}
