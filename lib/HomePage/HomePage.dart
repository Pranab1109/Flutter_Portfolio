import 'package:first_web_app/HomePage/home_content.dart';
import 'package:first_web_app/HomePage/home_content_mobile.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // ScrollController _scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: ScreenTypeLayout(
        mobile: HomeContentMobile(),
        desktop: HomeContentDesktop(),
      ),
    );
  }
}
