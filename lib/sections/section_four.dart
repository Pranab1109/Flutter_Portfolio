import 'package:first_web_app/colors.dart';
import 'package:first_web_app/widgets/centered_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SectionFour extends StatelessWidget {
  final ScrollController scrollController;

  const SectionFour({Key key, this.scrollController}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height,
      width: size.width,
      child: Stack(children: [
        SizedBox(
          height: size.height,
          width: size.width,
          child: Container(
            alignment: Alignment.bottomRight,
            height: size.height,
            width: size.width,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Cooloors.sectionFourBackgroundColor1,
                    Cooloors.sectionFourBackgroundColor2,
                    Cooloors.sectionFourBackgroundColor3
                  ]),
            ),
            child: Text(
              ":)",
              style: GoogleFonts.aclonica(
                fontSize: size.width / 5,
                color: Colors.blueAccent.withOpacity(0.5),
                // fontStyle: FontStyle.italic
              ),
            ),
          ),
        ),
        CenteredView(
          child: SizedBox(
            height: size.height,
            child: Container(
              child: Column(
                children: [
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: size.height / 4,
                          ),
                          Text(
                            "I am",
                            style: GoogleFonts.abrilFatface(
                              textStyle: TextStyle(
                                color: Colors.black54,
                                fontSize: 36,
                                // letterSpacing: 0.5,
                                shadows: [
                                  Shadow(
                                      color: Colors.black12,
                                      offset: Offset(10, 10),
                                      blurRadius: 5.0),
                                  Shadow(
                                      color: Colors.black12,
                                      offset: Offset(3, 3),
                                      blurRadius: 2.0),
                                ],
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              scrollController.animateTo(size.height,
                                  duration: Duration(milliseconds: 500),
                                  curve: Curves.easeIn);
                            },
                            child: Text(
                              "Pranab Saha",
                              style: GoogleFonts.abrilFatface(
                                textStyle: TextStyle(
                                  color: Cooloors.primaryLightTextColor,
                                  letterSpacing: 0.5,
                                  fontSize: size.width / 14,
                                  shadows: [
                                    Shadow(
                                        color: Colors.black12,
                                        offset: Offset(10, 10),
                                        blurRadius: 5.0),
                                    Shadow(
                                        color: Colors.black12,
                                        offset: Offset(3, 3),
                                        blurRadius: 2.0),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: size.height / 4),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
