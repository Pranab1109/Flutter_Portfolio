import 'package:first_web_app/colors.dart';
import 'package:first_web_app/widgets/navigation%20bar/navbar_logo.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NavigationDrawerHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          Cooloors.sectionOneBackgroundColor1,
          Cooloors.sectionOneBackgroundColor2,
          Cooloors.sectionOneBackgroundColor3
        ], begin: Alignment.topLeft, end: Alignment.bottomRight),
      ),
      alignment: Alignment.center,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          NavBarLogo(
            size: 26,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "MENU",
            style: GoogleFonts.firaCode(
              textStyle: TextStyle(
                  color: Colors.black87.withOpacity(.7),
                  fontSize: 20,
                  fontWeight: FontWeight.w600),
            ),
          ),
        ],
      ),
    );
  }
}
