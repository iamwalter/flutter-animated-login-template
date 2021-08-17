import 'package:flutter/material.dart';

class ScaleExpandedWidget extends StatefulWidget {
  final Widget child;

  const ScaleExpandedWidget({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  _ScaleExpandedWidgetState createState() => _ScaleExpandedWidgetState();
}

class _ScaleExpandedWidgetState extends State<ScaleExpandedWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController expandController;
  late Animation<double> animation;

  @override
  void initState() {
    expandController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 500));
    animation =
        CurvedAnimation(parent: expandController, curve: Curves.fastOutSlowIn);
    expandController.forward(from: 0);

    super.initState();
  }

  @override
  void dispose() {
    expandController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ScaleTransition(
      scale: animation,
      child: widget.child,
    );
  }
}
