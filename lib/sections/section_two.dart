import 'package:first_web_app/colors.dart';
import 'package:first_web_app/widgets/animated_widget.dart';
import 'package:first_web_app/widgets/centered_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import "package:velocity_x/velocity_x.dart";

class SectionTwo extends StatelessWidget {
  final ScrollController scrollController;

  const SectionTwo({Key key, this.scrollController}) : super(key: key);

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
            alignment: Alignment.topLeft,
            height: size.height,
            width: size.width,
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                Cooloors.sectionTwoBackgroundColor1,
                Cooloors.sectionTwoBackgroundColor2,
                Cooloors.sectionTwoBackgroundColor3
              ], begin: Alignment.topLeft, end: Alignment.bottomRight),
            ),
            child: Text(
              ":)",
              style: GoogleFonts.aclonica(
                fontSize: size.width / 5,
                color: Colors.black.withOpacity(0.5),
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
                  Expanded(
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomAnimatedWidget(
                          child: PranabImage(),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: size.height / 4,
                            ),
                            Text(
                              "About Me",
                              style: GoogleFonts.abrilFatface(
                                textStyle: TextStyle(
                                  color: Cooloors.primaryDarkTextColor,
                                  fontSize: 52,
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
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              // margin: const EdgeInsets.only(right: 50.0),
                              // alignment: Alignment.centerRight,
                              width: size.width / 3,
                              child: RichText(
                                textAlign: TextAlign.center,
                                text: TextSpan(
                                  text: 'I am a student studying @ ',
                                  style: GoogleFonts.inconsolata(
                                    fontSize: 26,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: 'IIEST, Shibpur',
                                      style: GoogleFonts.inconsolata(
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    TextSpan(
                                      text: ' persuing B.Tech in ',
                                      style: GoogleFonts.inconsolata(
                                        fontSize: 26,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    TextSpan(
                                      text: ' Information Technology!',
                                      style: GoogleFonts.inconsolata(
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 20.0),
                              child: Text(
                                "My Skills",
                                style: GoogleFonts.abrilFatface(
                                  textStyle: TextStyle(
                                    color: Cooloors.primaryDarkTextColor,
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
                            ),
                            Container(
                              width: 500,
                              height: 200,
                              child: VxSwiper(
                                viewportFraction: 0.45,
                                items: [
                                  MySkill(
                                    title: "Flutter",
                                    color: Colors.lightBlue,
                                  ),
                                  MySkill(
                                    title: "Dart",
                                    color: Colors.deepPurpleAccent,
                                  ),
                                  MySkill(
                                    title: "HTML",
                                    color: Colors.red[200],
                                  ),
                                  MySkill(
                                    title: "CSS",
                                    color: Colors.cyan,
                                  ),
                                  MySkill(
                                    title: "JavaScript",
                                    color: Colors.orange[200],
                                  ),
                                ],
                                autoPlay: true,
                                autoPlayCurve: Curves.easeIn,
                                autoPlayInterval: Duration(milliseconds: 4000),
                              ),
                            ),
                            SizedBox(
                              height: 50,
                            ),
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 20, horizontal: 50),
                                  primary: Colors.black87, // background
                                  onPrimary: Colors.white, // foreground
                                ),
                                onPressed: () {
                                  scrollController.animateTo(size.height * 2,
                                      duration: Duration(milliseconds: 500),
                                      curve: Curves.easeIn);
                                },
                                child: Row(
                                  children: [
                                    Text("My Works"),
                                    Icon(Icons.arrow_downward_rounded)
                                  ],
                                ))
                          ],
                        ),
                      ],
                    ),
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

class PranabImage extends StatelessWidget {
  const PranabImage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.only(left: 200, top: 50),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            blurRadius: 30,
            color: Colors.black26,
            offset: Offset(20, 20),
          ),
          BoxShadow(
            blurRadius: 10,
            color: Colors.black26,
            offset: Offset(10, 10),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(500),
        child: Image.asset(
          'Images/pranab.jpeg',
          color: Colors.black12,
          colorBlendMode: BlendMode.darken,
        ),
      ),
      height: 400,
    );
  }
}

class MySkill extends StatelessWidget {
  final String title;
  final Color color;

  const MySkill({Key key, this.title, this.color}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: Colors.white60,
            boxShadow: [
              BoxShadow(
                  blurRadius: 15, color: Colors.black38, offset: Offset(5, 5))
            ]),
        width: 150,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.0),
            color: color,
          ),
          child: Center(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              title,
              style: GoogleFonts.abrilFatface(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Cooloors.primaryDarkTextColor),
            ),
          )),
        ),
      ),
    );
  }
}
