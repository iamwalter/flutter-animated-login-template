import 'dart:math' as math;
import 'dart:ui';

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
    begin: -math.pi,
    end: math.pi,
  );
  late final Animation<double> animation;

  @override
  void initState() {
    _animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 8));

    animation = _piTween.animate(_animationController)
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          _animationController.forward(from: -math.pi);
        } else if (status == AnimationStatus.dismissed) {
          _animationController.forward();
        }
      });

    _animationController.forward();

    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return RotatedBox(
      quarterTurns: 2,
      child: ClipPath(
        clipper: WaveClipper(position: animation.value),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Container(
          color: Colors.white,
        ),
      ),
    );
  }
}

class WaveClipper extends CustomClipper<Path> {
  final double position;

  WaveClipper({required this.position});

  @override
  Path getClip(Size size) {
    final path = Path();

    for (double x = 0; x < size.width; x++) {
      final y = math.sin(0.02 * x + position) * 20 + size.height / 2;

      path.lineTo(x, y);
    }
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant WaveClipper oldClipper) {
    return oldClipper.position != position;
  }
}

class WavePainter extends CustomPainter {
  final double position;

  static const topColor = Colors.blue;

  const WavePainter({required this.position});

  @override
  void paint(Canvas c, Size size) {
    final paint = Paint()
      ..color = Colors.blue
      ..strokeWidth = 10;
    final points = <Offset>[];

    for (double x = 0; x < size.width; x++) {
      final y = math.sin(0.02 * x + position) * 20 + size.height / 2;
      points.add(Offset(x, y));
    }

    c.drawPoints(PointMode.polygon, points, paint);
  }

  @override
  bool shouldRepaint(covariant WavePainter oldDelegate) {
    return oldDelegate.position != position;
  }
}
