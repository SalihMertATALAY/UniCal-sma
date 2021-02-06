import 'package:Forest/AnimationTransition/AnimationTransition.dart';
import 'package:Forest/Applicationbar/ApplicationBar.dart';
import 'package:Forest/Applicationbar/DrawerState.dart';
import 'package:Forest/DersEkleme/DersEkleme.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:simple_timer/simple_timer.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
  static bool zaman = false;
  static int dakika = 0;
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  GlobalKey _globalKey = new GlobalKey();
  TimerController _timerController;
  bool basladi = false;
  @override
  void initState() {
    super.initState();
    _timerController = TimerController(this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      backgroundColor: Color(0XFFC6E7F3),
      appBar: ApplicationBar(
          Color(0XFFC6E7F3), Color(0xff329D9C), "ANASAYFA", Colors.white),
      drawer: DrawerState(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.contain,
                    image: AssetImage(
                      "images/arkaDag.png",
                    ),
                    alignment: Alignment.bottomCenter),
                     borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(40.00),
            bottomRight: Radius.circular(40.00),
            
          ),
                    ),
            child: Center(child: SaatSecimFunc()),
          ),
            SizedBox(width: 0.0, height: 20),
          HomePage.zaman && basladi
              ? Center(
                  child: IconButton(
                    icon: Icon(
                      Icons.pause_circle_filled,
                      size: 80,
                    ),
                    onPressed: () {
                      setState(() {
                        basladi = false;
                        _timerController.pause();
                      });
                      print(basladi);
                    },
                  ),
                )
              : HomePage.zaman && !basladi
                  ? Center(
                      child: IconButton(
                          icon: Icon(
                            Icons.not_started_rounded,
                            size: 80,
                          ),
                          onPressed: () {
                            setState(() {
                              basladi = true;
                              _timerController.start();
                            });
                            print(basladi);
                          }),
                    )
                  : ButtonContainer(),
          SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }

  ProgressSonucu() {
    return SleekCircularSlider(
      min: 0,
      max: 95,
      initialValue: 65,
      appearance: CircularSliderAppearance(
        size: 250,
        customColors: CustomSliderColors(
          hideShadow: true,
          progressBarColors: [Color(0xff5AD5B7), Color(0xff19886D)],
          progressBarColor: Color(0xff0091FF),
          trackColor: Color(0xffffffff),
        ),
        customWidths: CustomSliderWidths(
          trackWidth: 4,
          progressBarWidth: 15,
        ),
        angleRange: 360,
        startAngle: 270,
      ),
      onChangeEnd: (v) {
        setState(() {
          HomePage.dakika = (v).toInt();
          HomePage.dakika = HomePage.dakika - (HomePage.dakika % 5);
        });
        _timerController.duration = Duration(minutes: HomePage.dakika);
      },
      innerWidget: (v) {
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.network(
                "https://i.pinimg.com/originals/e5/93/ab/e593ab0589d5f1b389e4dfbcce2bce20.gif",
                height: 80,
              )
            ],
          ),
        );
      },
    );
  }

  SaatSecimFunc() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Motivasyon("Başta zor gelebilir ama her şey başta zor gelir.",
            "MIYAMATO MUSAHI"),
        SizedBox(width: 0.0, height: 45),
        ProgressSonucu(),
        SizedBox(width: 0.0, height: 10),
        Saat(),
        SizedBox(width: 0.0, height: 60),
      ],
    );
  }

  Saat() {
    return Container(
      height: 140,
      width: 140,
      margin: EdgeInsets.symmetric(vertical: 10),
      child: SimpleTimer(
        duration: Duration(minutes: HomePage.dakika),
        progressTextCountDirection: TimerProgressTextCountDirection.count_down,
        controller: _timerController,
        backgroundColor: Colors.transparent,
        progressIndicatorColor: Colors.transparent,
        progressTextStyle: GoogleFonts.montserrat(
            color: Colors.white, fontSize: 80, fontWeight: FontWeight.bold),
      ),
    );
  }

  ButtonContainer() {
    return GestureDetector(
      onTap: () {
        //_timerController.start();
        AnimationTranstion.AnimationPushWidget_UptoDown(DersEkleme(), context);
      },
      child: new Container(
        height: 55.00,
        width: 296.00,
        decoration: BoxDecoration(
          color: Color(0xffebf4f8),
          boxShadow: [
            BoxShadow(
              color: Color(0xff000000).withOpacity(0.40),
              blurRadius: 89,
            ),
          ],
          borderRadius: BorderRadius.circular(28.00),
        ),
        child: FittedBox(
          fit: BoxFit.scaleDown,
          child: ButtonText("Çalışma Planı Ekle"),
        ),
      ),
    );
  }

  Motivasyon(String Ders, String yazar) {
    return Card(
      color: Color(0XFFC6E7F3),
      child: ListTile(
        title: Text(Ders,textAlign: TextAlign.center,style: GoogleFonts.montserrat(color:Color(0xff56C596),fontWeight: FontWeight.bold ),),
        subtitle: Text(yazar,textAlign: TextAlign.right,style: GoogleFonts.montserrat(color: Color(0xff205072),fontWeight: FontWeight.w500),
      ),
    ),);
  }

  SaatText(String Saat) {
    return new Text('$Saat',
        textAlign: TextAlign.center,
        style: GoogleFonts.montserrat(
            fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold));
  }

  ButtonText(String ekle) {
    return new Text(
      ekle,
      textAlign: TextAlign.center,
      style: TextStyle(
        fontFamily: "IBMPlexSans-Medium",
        fontSize: 20,
        color: Color(0xff47cacc),
      ),
    );
  }
}
