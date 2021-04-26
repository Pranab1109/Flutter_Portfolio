import 'package:first_web_app/colors.dart';
import 'package:first_web_app/widgets/centered_view.dart';
import 'package:first_web_app/widgets/navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ScrollController _scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  controller: _scrollController,
                  scrollDirection: Axis.vertical,
                  child: Stack(
                    children: [
                      Column(
                        children: [
                          SizedBox(
                            height: size.height,
                            width: size.width,
                            child: Container(
                              color: Cooloors.backgroundColor,
                              child: Padding(
                                padding: const EdgeInsets.only(top: 200),
                                child: Text(
                                  "Hello",
                                  style: GoogleFonts.aclonica(
                                    fontSize: 350,
                                    color: Colors.redAccent.withOpacity(0.5),
                                    // fontStyle: FontStyle.italic
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: size.height,
                            child: Container(
                              color: Colors.black87,
                            ),
                          ),
                        ],
                      ),
                      CenteredView(
                        child: Container(
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        height: size.height / 4,
                                      ),
                                      Text(
                                        "I am",
                                        style: GoogleFonts.abrilFatface(
                                          textStyle: TextStyle(
                                            color: Colors.black54,
                                            // letterSpacing: 0.5,
                                            fontSize: 40,
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
                                          /// Scroll maximum end, if you want you can give hardcoded values also in place of _scrollController.position.maxScrollExtent
                                          _scrollController.animateTo(
                                              size.height,
                                              duration:
                                                  Duration(milliseconds: 500),
                                              curve: Curves.ease);
                                        },
                                        child: Text(
                                          "Pranab Saha",
                                          style: GoogleFonts.abrilFatface(
                                            textStyle: TextStyle(
                                              color: Cooloors.primaryTextColor,
                                              letterSpacing: 0.5,
                                              fontSize: 100,
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
                                      SizedBox(height: 1000),
                                      Text("Helloooo")
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          NavigationBar(),
        ],
      ),
    );
  }
}
