import 'package:flutter/material.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

class CircularBar extends StatefulWidget {
  @override
  _CircularBarState createState() => _CircularBarState();
}

class _CircularBarState extends State<CircularBar> {
  int month = 0;
  int dakika = 0;
  int saat = 0;
  String resim = "images/Waiting.png";
  String dakikaKucuk = "0";
  @override
  Widget build(BuildContext context) {
    return Center(child: ProgressSonucu(),);
  }
  ProgressSonucu() {
    return SleekCircularSlider(
      min: 0,
      max: 360,
      initialValue: 0,
      appearance: CircularSliderAppearance(
        size: 200,
        customColors: CustomSliderColors(
          hideShadow: true,
          progressBarColors: [Color(0xff5AD5B7), Color(0xff19886D)],
          progressBarColor: Color(0xff0091FF),
          trackColor: Color(0xffffffff),
        ),
        customWidths: CustomSliderWidths(
          trackWidth: 8,
          progressBarWidth: 20,
        ),
        angleRange: 360,
        startAngle: 270,
      ),
      onChange: (v) {
        setState(() {
          saat = (v / 60).toInt();
          dakika = (v % 60).toInt();
          if (saat == 0) {
            resim = "images/Waiting.png";
          } else if (saat == 1) {
            resim = "images/OldMan.png";
          } else if (saat == 2) {
            resim = "images/Walking.png";
          } else if (saat == 3) {
            resim = "images/FirstRun.png";
          } else {
            resim = "images/SecondRun.png";
          }
          if (dakika > 9) {
            dakikaKucuk = "";
          } else {
            dakikaKucuk = "0";
          }
        });
      },
      innerWidget: (v) {
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                resim,
                height: 100,
              ),
            ],
          ),
        );
      },
    );
  }
}