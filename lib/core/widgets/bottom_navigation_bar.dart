import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomBottomNavigatiorBar extends StatelessWidget {
  final TabsRouter router;
  const CustomBottomNavigatiorBar({Key? key, required this.router})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 1.sw,
      height: 80.h,
      child: Stack(
        children: [
          CustomPaint(
            size: Size(1.sw, 80.h),
            painter: BottomNavBarPainter(),
          ),
          SizedBox(
            width: 1.sw,
            height: 90.h,
            child: NavigationBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
              selectedIndex: router.activeIndex,
              onDestinationSelected: router.setActiveIndex,
              destinations: const [
                NavigationDestination(
                  icon: Icon(
                    Icons.home,
                    color: Colors.white,
                  ),
                  label: '',
                ),
                Padding(
                  padding: EdgeInsets.only(right: 45.0),
                  child: NavigationDestination(
                    icon: Icon(
                      Icons.category,
                      color: Colors.white,
                    ),
                    label: '',
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 45.0),
                  child: NavigationDestination(
                    icon: Icon(
                      Icons.calendar_month,
                      color: Colors.white,
                    ),
                    label: '',
                  ),
                ),
                NavigationDestination(
                  icon: Icon(
                    Icons.history_rounded,
                    color: Colors.white,
                  ),
                  label: '',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class BottomNavBarPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.black54
      ..style = PaintingStyle.fill;
    Path path = Path()..moveTo(0.w, 20.h);

    path.quadraticBezierTo(1.sw * 0.20, 0, 1.sw * 0.35, 0);
    path.quadraticBezierTo(1.sw * 0.40, 0, 1.sw * 0.40, 20.h);
    path.arcToPoint(Offset(1.sw * 0.6, 20.h),
        radius: Radius.circular(10.h), clockwise: false);
    path.quadraticBezierTo(1.sw * 0.60, 0, 1.sw * 0.65, 0);
    path.quadraticBezierTo(1.sw * 0.80, 0, 1.sw, 20.h);
    path.lineTo(1.sw, 1.sh);
    path.lineTo(0.w, 1.sh);
    path.close();

    canvas.drawShadow(path, Colors.black, 5, true);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
