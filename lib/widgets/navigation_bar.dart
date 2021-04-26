import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../colors.dart';

class NavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 30),
      color: Colors.transparent,
      height: 100,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 200,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "<Pranab.>",
              style: GoogleFonts.firaCode(
                textStyle: TextStyle(
                    color: Colors.black87.withOpacity(.7),
                    fontSize: 50,
                    fontWeight: FontWeight.w700),
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                _NavBarItem(
                  title: 'Home',
                ),
                SizedBox(
                  width: 60,
                ),
                _NavBarItem(
                  title: 'About Me',
                ),
                SizedBox(
                  width: 60,
                ),
                _NavBarItem(
                  title: 'My Works',
                ),
                SizedBox(
                  width: 60,
                ),
                _NavBarItem(
                  title: 'Contact Me',
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class _NavBarItem extends StatelessWidget {
  final String title;

  const _NavBarItem({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: GoogleFonts.heebo(fontSize: 20, fontWeight: FontWeight.w500),
    );
  }
}
