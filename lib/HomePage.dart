import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan[300],
      appBar: AppBar(
        // title: Text(
        //   "Hello There",
        //   style: TextStyle(color: Colors.black87),
        // ),
        backgroundColor: Colors.cyan[300],
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 35.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "I am",
                    style: GoogleFonts.abrilFatface(
                      textStyle: TextStyle(
                          color: Colors.black38,
                          // letterSpacing: 0.5,
                          fontSize: 35),
                    ),
                  ),
                  Text(
                    "Pranab Saha",
                    style: GoogleFonts.abrilFatface(
                      textStyle: TextStyle(
                          color: Colors.black54,
                          letterSpacing: 0.5,
                          fontSize: 80),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
