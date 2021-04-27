import 'package:first_web_app/widgets/centered_view.dart';
import 'package:first_web_app/widgets/navigation%20bar/navbar_items.dart';
import 'package:first_web_app/widgets/navigation%20bar/navbar_logo.dart';
import 'package:flutter/material.dart';

class NavigationBarDesktop extends StatelessWidget {
  final ScrollController scrollController;

  const NavigationBarDesktop({Key key, this.scrollController})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
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
              NavBarLogo(
                size: size.width / 40,
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  GestureDetector(
                    onTap: () {
                      scrollController.animateTo(0,
                          duration: Duration(milliseconds: 500),
                          curve: Curves.easeIn);
                    },
                    child: NavBarItem(
                      title: 'Home',
                    ),
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  GestureDetector(
                    onTap: () {
                      scrollController.animateTo(size.height,
                          duration: Duration(milliseconds: 500),
                          curve: Curves.easeIn);
                    },
                    child: NavBarItem(
                      title: 'About Me',
                    ),
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  GestureDetector(
                    onTap: () {
                      scrollController.animateTo(size.height * 2,
                          duration: Duration(milliseconds: 500),
                          curve: Curves.easeIn);
                    },
                    child: NavBarItem(
                      title: 'My Works',
                    ),
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  GestureDetector(
                    onTap: () {
                      scrollController.animateTo(size.height * 3,
                          duration: Duration(milliseconds: 500),
                          curve: Curves.easeIn);
                    },
                    child: NavBarItem(
                      title: 'Contact Me',
                    ),
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
