import 'package:first_web_app/widgets/drawer_item.dart';
import 'package:first_web_app/widgets/navigation_drawer_header.dart';
import 'package:flutter/material.dart';

class NavigationDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 16)]),
      child: Column(
        children: [
          NavigationDrawerHeader(),
          DrawerItem(
            title: 'Home',
            icon: Icons.home,
          ),
          DrawerItem(
            title: 'About Me',
            icon: Icons.person,
          ),
          DrawerItem(
            title: 'My Works',
            icon: Icons.work,
          ),
          DrawerItem(
            title: 'Contact Me',
            icon: Icons.phone,
          ),
        ],
      ),
    );
  }
}
