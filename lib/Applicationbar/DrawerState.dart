import 'package:Forest/AnimationTransition/AnimationTransition.dart';
import 'package:Forest/Arkadaslar/Arkadaslar.dart';
import 'package:Forest/Basarimlar/Basarimlar.dart';
import 'package:Forest/Istatistikler/istatistikler.dart';
import 'package:Forest/Planlarim/Planlarim.dart';
import 'package:Forest/Test/Test.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:Forest/Universiteler/universiteler.dart';

import '../HomePage.dart';

class DrawerState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return Container(
      color: Color(0xff329D9C),
      width: 200,
      child: Drawer(
        child: ListView(
          children: <Widget>[
            SizedBox(
              height: 30,
            ),
            Center(
              child: Avatar(),
            ),
            SizedBox(
              height: 30,
            ),
            ListTile(
              title: Text(
                "AnaSayfa",
                style: GoogleFonts.montserrat(color: Color(0xff205072),),
              ),
              leading: Icon(Icons.home),
              onTap: () {
                AnimationTranstion.AnimationPushWidget_LeftToRight(
                    HomePage(), context);
              },
            ),
              ListTile(
              title: Text(
                "Test",
                style: GoogleFonts.montserrat(color: Color(0xff205072),),
              ),
              leading: Icon(Icons.note_add),
              onTap: () {  AnimationTranstion.AnimationPushWidget_LeftToRight(
                    Test(), context);},
            ),
            ListTile(
              title: Text(
                "Arkadaşlar",
                style: GoogleFonts.montserrat(color: Color(0xff205072),),
              ),
              leading: Icon(Icons.people),
              onTap: () {
               AnimationTranstion.AnimationPushWidget_LeftToRight(
                    Arkadaslar(), context);
              },
            ),
            ListTile(
              title: Text(
                "İstatistikler",
                style: GoogleFonts.montserrat(color: Color(0xff205072),),
              ),
              leading: Icon(Icons.pie_chart),
              onTap: () {  AnimationTranstion.AnimationPushWidget_LeftToRight(
                    istatistikler(), context);},
            ),
            ListTile(
              title: Text(
                "Üniversiteler",
                style: GoogleFonts.montserrat(color: Color(0xff205072),),
              ),
              leading: Icon(Icons.school),
              onTap: () {  AnimationTranstion.AnimationPushWidget_LeftToRight(
                    Universiteler(), context);},
            ),
             ListTile(
              title: Text(
                "Planlarım",
                style: GoogleFonts.montserrat(color: Color(0xff205072),),
              ),
              leading: Icon(Icons.assignment),
              onTap: () {  AnimationTranstion.AnimationPushWidget_LeftToRight(
                    Planlarim(), context);},
            ),
             ListTile(
              title: Text(
                "Başarımlar",
                style: GoogleFonts.montserrat(color: Color(0xff205072),),
              ),
              leading: Icon(Icons.star_border),
              onTap: () {  AnimationTranstion.AnimationPushWidget_LeftToRight(
                    Basarimlar(), context);},
            ),
             ListTile(
              title: Text(
                "Hakkımızda",
                style: GoogleFonts.montserrat(color: Color(0xff205072),),
              ),
              leading: Icon(Icons.supervised_user_circle),
              onTap: () {  AnimationTranstion.AnimationPushWidget_LeftToRight(
                    Basarimlar(), context);},
            ),
           
          ],
        ),
      ),
    );
  }
  Avatar() {
    return new CircleAvatar(
      radius: 35,
      child: Image.asset("images/user.png"),
      backgroundColor: Colors.transparent,
    );
  }
}
 