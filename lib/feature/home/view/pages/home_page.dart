import 'package:easy_track/feature/home/view/widgets/arc_progress_indicator.dart';
import 'package:easy_track/feature/home/view/widgets/subscription_and_bill.dart';
import 'package:easy_track/feature/home/view/widgets/subscription_row.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: const <Widget>[
              ArcProgressIndicator(),
              SubscriptionRow(),
              SubscriptionAndBills(),
            ],
          ),
        ),
      ),
    );
  }
}
