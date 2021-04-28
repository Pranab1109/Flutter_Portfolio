import 'package:flutter/material.dart';

class CustomAnimatedWidget extends StatefulWidget {
  final Widget child;

  const CustomAnimatedWidget({Key key, this.child}) : super(key: key);
  @override
  _CustomAnimatedWidgetState createState() => _CustomAnimatedWidgetState();
}

class _CustomAnimatedWidgetState extends State<CustomAnimatedWidget>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation<Offset> _animation;
  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 3))
          ..repeat(reverse: true);
    _animation = Tween(begin: Offset.zero, end: Offset(0, 0.08))
        .animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _animation,
      child: widget.child,
    );
  }
}
