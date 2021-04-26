import 'package:first_web_app/widgets/centered_view.dart';
import 'package:first_web_app/widgets/navigation%20bar/navbar_items.dart';
import 'package:first_web_app/widgets/navigation%20bar/navbar_logo.dart';
import 'package:flutter/material.dart';

class NavigationBarTablet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(top: 30, left: 20, right: 20),
      color: Colors.transparent,
      height: 100,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 0,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            NavBarLogo(
              size: size.width / 20,
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                NavBarItem(
                  title: 'Home',
                ),
                SizedBox(
                  width: 40,
                ),
                NavBarItem(
                  title: 'About Me',
                ),
                SizedBox(
                  width: 40,
                ),
                NavBarItem(
                  title: 'My Works',
                ),
                SizedBox(
                  width: 40,
                ),
                NavBarItem(
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
