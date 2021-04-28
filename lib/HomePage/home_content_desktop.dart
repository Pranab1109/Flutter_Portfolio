import 'package:first_web_app/colors.dart';
import 'package:first_web_app/sections/section_four.dart';
import 'package:first_web_app/sections/section_one.dart';
import 'package:first_web_app/sections/section_three.dart';
import 'package:first_web_app/sections/section_two.dart';
import 'package:first_web_app/widgets/navigation%20bar/navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeContentDesktop extends StatelessWidget {
  final ScrollController _scrollController = ScrollController();

  // const HomeContentDesktop({Key key, this._scrollController}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Column(
          children: [
            Expanded(
              child: CupertinoScrollbar(
                thickness: 10.0,
                radius: Radius.circular(5.0),
                controller: _scrollController,
                isAlwaysShown: true,
                child: ListView(
                  controller: _scrollController,
                  children: [
                    SectionThree(
                      scrollController: _scrollController,
                    ),
                    SectionTwo(
                      scrollController: _scrollController,
                    ),
                    SectionThree(
                      scrollController: _scrollController,
                    ),
                    SectionFour(
                      scrollController: _scrollController,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        NavigationBar(
          scrollController: _scrollController,
        ),
      ],
    );
  }
}
