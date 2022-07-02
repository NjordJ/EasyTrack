import 'package:easy_track/core/widgets/app_bar.dart';
import 'package:flutter/material.dart';

class CalendarPage extends StatelessWidget {
  const CalendarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: const <Widget>[Text('Calendar page')],
          ),
        ),
      ),
    );
  }
}
