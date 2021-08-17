import 'dart:math';

import 'package:flutter/material.dart';

class WaveAnimation extends StatefulWidget {
  const WaveAnimation({Key? key}) : super(key: key);

  @override
  _WaveAnimationState createState() => _WaveAnimationState();
}

class _WaveAnimationState extends State<WaveAnimation>
    with SingleTickerProviderStateMixin {
  late final AnimationController _animationController;
  late final Tween<double> _piTween = Tween<double>(
    begin: -pi,
    end: pi,
  );
  late final Animation<double> animation;

  @override
  void initState() {
    _animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 1));

    animation = _piTween.animate(_animationController)
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          _animationController.repeat();
        } else if (status == AnimationStatus.dismissed) {
          _animationController.forward();
        }
      });

    _animationController.forward();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: CustomPaint(
        child: Container(),
        painter: WavePainter(position: animation.value),
      ),
    );
  }
}

class WavePainter extends CustomPainter {
  final double position;

  static const topColor = Colors.blue;

  const WavePainter({required this.position});

  @override
  void paint(Canvas c, Size size) {
    final _paint = Paint()..color = Colors.orange;
    final w = size.width;
    final h = size.height / 2;
    final f = 1;

    double calcSineY(x) {
      return h - h * sin(x * 2 * pi * (f / w));
    }

    final path = Path();
    path.moveTo(0, h);
    path.lineTo(w, h);
    c.drawPath(path, _paint);
    path.reset();
    path.moveTo(0, h);
    for (double i = 0; i < 200; i++) {
      var y = calcSineY(position);
      path.moveTo(i, y);
      path.lineTo(i, y);
    }

    c.drawPath(path, _paint);
  }

  @override
  bool shouldRepaint(covariant WavePainter oldDelegate) {
    return oldDelegate.position != position;
  }
}
