import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ApplicationBar extends StatelessWidget with PreferredSizeWidget {
  ApplicationBar(this.color, this.colorNavigation, this.title, this.TitleColor);
  final Color color;
  final Color colorNavigation;
  final String title;
  final Color TitleColor;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor:  Color(0XFFC6E7F3),
      elevation: 0.0,
      leading: IconButton(
        icon: Icon(
          Icons.menu,
          color: Color(0xff329D9C),
        ),
        onPressed: () => Scaffold.of(context).openDrawer(),
      ),
      title: AutoSizeText(
        title,
        style: GoogleFonts.montserrat(color: Color(0xff329D9C),),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
