import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';

class NavBarItem extends StatefulWidget {
  final int page;
  final ScrollController scrollController;
  final Size size;
  final String title;

  const NavBarItem(
      {Key key, this.title, this.size, this.scrollController, this.page})
      : super(key: key);

  @override
  _NavBarItemState createState() => _NavBarItemState();
}

class _NavBarItemState extends State<NavBarItem> {
  Size size;
  ScrollController scrollController;

  bool isHover;
  @override
  void initState() {
    isHover = false;
    size = widget.size;
    scrollController = widget.scrollController;
    super.initState();
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (f) {
        setState(() {
          isHover = true;
        });
      },
      onHover: (f) {
        setState(() {
          isHover = true;
        });
      },
      onExit: (f) {
        setState(() {
          isHover = false;
        });
      },
      child: AnimatedContainer(
        transform: Matrix4.identity()..translate(0, isHover ? -10 : 0, 0),
        width: 120,
        duration: Duration(milliseconds: 200),
        child: GestureDetector(
          onTap: () {
            widget.scrollController.animateTo(size.height * widget.page,
                duration: Duration(milliseconds: 500), curve: Curves.easeIn);
          },
          child: Text(
            widget.title,
            style: GoogleFonts.heebo(
                fontSize: isHover ? 22 : 20,
                fontWeight: isHover ? FontWeight.bold : FontWeight.w500),
          ),
        ),
      ),
    );
  }
}
