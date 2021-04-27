import 'package:first_web_app/widgets/centered_view.dart';
import 'package:first_web_app/widgets/navigation%20bar/navbar_items.dart';
import 'package:first_web_app/widgets/navigation%20bar/navbar_logo.dart';
import 'package:flutter/material.dart';

class NavigationBarDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CenteredView(
      child: Container(
        margin: const EdgeInsets.only(top: 30),
        color: Colors.transparent,
        height: 100,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 0,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              NavBarLogo(),
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
      ),
    );
  }
}