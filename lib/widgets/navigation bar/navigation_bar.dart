import 'package:first_web_app/widgets/navigation%20bar/navigationbar_mobile.dart';
import 'package:first_web_app/widgets/navigation%20bar/navigationbar_tab.dart';
import 'package:first_web_app/widgets/navigation%20bar/navigationbar_desk.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class NavigationBar extends StatelessWidget {
  final ScrollController scrollController;

  const NavigationBar({Key key, this.scrollController}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    ScrollController scrollController = this.scrollController;
    return ScreenTypeLayout(
      mobile: NavigationBarMobile(),
      tablet: NavigationBarTablet(),
      desktop: NavigationBarDesktop(
        scrollController: scrollController,
      ),
    );
  }
}
