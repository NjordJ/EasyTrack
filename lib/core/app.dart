import 'package:easy_track/core/routes/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

final appRouter = AppRouter();

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: ScreenUtil.defaultSize,
      builder: (BuildContext context, Widget? child) => MaterialApp.router(
        title: 'EasyTrack',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          brightness: Brightness.dark,
          navigationBarTheme: const NavigationBarThemeData(),
        ),
        routerDelegate: appRouter.delegate(),
        routeInformationParser: appRouter.defaultRouteParser(),
      ),
    );
  }
}
