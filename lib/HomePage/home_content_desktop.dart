import 'package:draggable_scrollbar/draggable_scrollbar.dart';
import 'package:first_web_app/colors.dart';
import 'package:first_web_app/sections/section_four.dart';
import 'package:first_web_app/sections/section_one.dart';
import 'package:first_web_app/sections/section_three.dart';
import 'package:first_web_app/sections/section_two.dart';
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
                backgroundColor: Cooloors.primaryLightTextColor,
                heightScrollThumb: size.height / 2,
                alwaysVisibleScrollThumb: true,
                child: ListView(
                  controller: scrollController,
                  children: [
                    Column(
                      children: [
                        SectionOne(
                          scrollController: scrollController,
                        ),
                        SectionTwo(
                          scrollController: scrollController,
                        ),
                        SectionThree(
                          scrollController: scrollController,
                        ),
                        SectionFour(
                          scrollController: scrollController,
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
