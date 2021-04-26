import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NavBarLogo extends StatelessWidget {
  final double size;

  const NavBarLogo({Key key, this.size}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(
      "<Pranab.>",
      style: GoogleFonts.firaCode(
        textStyle: TextStyle(
            color: Colors.black87.withOpacity(.7),
            fontSize: size,
            fontWeight: FontWeight.w700),
      ),
    );
  }
}
