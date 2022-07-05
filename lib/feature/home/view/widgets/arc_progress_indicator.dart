import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:flutter_screenutil/flutter_screenutil.dart';

class ArcProgressIndicator extends StatefulWidget {
  const ArcProgressIndicator({Key? key}) : super(key: key);

  @override
  State<ArcProgressIndicator> createState() => _ArcProgressIndicatorState();
}

class _ArcProgressIndicatorState extends State<ArcProgressIndicator>
    with SingleTickerProviderStateMixin {
  late Animation<double> animation;
  late AnimationController animationController;

  @override
  void initState() {
    super.initState();

    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    final curvedAnimation = CurvedAnimation(
      parent: animationController,
      curve: Curves.easeInOutCubic,
    );

    animation = Tween<double>(begin: 0.0, end: 3.14).animate(curvedAnimation)
      ..addListener(() {
        setState(() {});
      });
    animationController.repeat(reverse: false);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        CustomPaint(
          size: Size(260.w, 180.h),
          painter: ProgressArc(animation.value, Colors.black45, false),
        ),
        CustomPaint(
          size: Size(260.w, 180.h),
          painter: ProgressArc(animation.value, Colors.amber.shade800, false),
        ),
        Positioned(
          top: 70.h,
          child: Column(
            children: [
              const Text('EasyTrack'),
              const Text('\$1235'),
              const Text('This month bills'),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      Theme.of(context).cardColor),
                  shape: MaterialStateProperty.all<OutlinedBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15))),
                  // backgroundColor:
                  //     MaterialStateProperty.all<Color>(Colors.white),
                ),
                onPressed: () {},
                child: const Text('See your budget'),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class ProgressArc extends CustomPainter {
  double arc;
  Color progressColor;
  bool isBackground;

  ProgressArc(this.arc, this.progressColor, this.isBackground);

  @override
  void paint(Canvas canvas, Size size) {
    const rect = Rect.fromLTRB(0, 0, 300, 300);
    const startAngle = -math.pi;
    //final sweepAngle = arc != null ? arc : math.pi;
    final sweepAngle = arc;
    const useCenter = false;
    final paint = Paint()
      ..strokeCap = StrokeCap.round
      ..color = progressColor
      ..style = PaintingStyle.stroke
      ..strokeWidth = 20;

    if (isBackground) {}
    canvas.drawArc(rect, startAngle, sweepAngle, useCenter, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
