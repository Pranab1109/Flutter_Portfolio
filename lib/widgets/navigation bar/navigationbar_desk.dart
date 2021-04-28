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
              GestureDetector(
                onTap: () {
                  scrollController.animateTo(0,
                      duration: Duration(milliseconds: 500),
                      curve: Curves.easeIn);
                },
                child: NavBarLogo(
                  size: size.width / 40,
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  NavBarItem(
                    page: 0,
                    scrollController: scrollController,
                    size: size,
                    title: 'Home',
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  NavBarItem(
                    page: 1,
                    scrollController: scrollController,
                    size: size,
                    title: 'About Me',
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  NavBarItem(
                    page: 2,
                    scrollController: scrollController,
                    size: size,
                    title: 'My Works',
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  NavBarItem(
                    page: 3,
                    scrollController: scrollController,
                    size: size,
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
