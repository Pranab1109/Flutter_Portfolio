import 'package:draggable_scrollbar/draggable_scrollbar.dart';
import 'package:first_web_app/colors.dart';
import 'package:first_web_app/widgets/centered_view.dart';
import 'package:first_web_app/widgets/navigation%20bar/navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeContentDesktop extends StatefulWidget {
  @override
  _HomeContentDesktopState createState() => _HomeContentDesktopState();
}

class _HomeContentDesktopState extends State<HomeContentDesktop> {
  ScrollController scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Column(
          children: [
            Expanded(
              child: DraggableScrollbar.rrect(
                controller: scrollController,
                backgroundColor: Cooloors.primaryTextColor,
                heightScrollThumb: size.height / 2,
                alwaysVisibleScrollThumb: true,
                child: ListView(
                  controller: scrollController,
                  children: [
                    Stack(
                      children: [
                        Column(
                          children: [
                            SizedBox(
                              height: size.height,
                              width: size.width,
                              child: Container(
                                alignment: Alignment.bottomRight,
                                height: size.height,
                                width: size.width,
                                color: Cooloors.backgroundColor,
                                child: Text(
                                  "Hello :\\",
                                  style: GoogleFonts.aclonica(
                                    fontSize: size.width / 5,
                                    color: Colors.redAccent.withOpacity(0.5),
                                    // fontStyle: FontStyle.italic
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
                                              fontSize: size.width / 30,
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
                                            scrollController.animateTo(
                                                size.height,
                                                duration:
                                                    Duration(milliseconds: 500),
                                                curve: Curves.easeIn);
                                          },
                                          child: Text(
                                            "Pranab Saha",
                                            style: GoogleFonts.abrilFatface(
                                              textStyle: TextStyle(
                                                color:
                                                    Cooloors.primaryTextColor,
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
                  ],
                ),
              ),
            ),
          ],
        ),
        NavigationBar(
          scrollController: scrollController,
        ),
      ],
    );
  }
}
