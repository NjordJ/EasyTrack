import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SubscriptionRow extends StatelessWidget {
  const SubscriptionRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const <Widget>[
          _SubsCard(
            title: 'Active subs',
            value: 12,
          ),
          _SubsCard(
            title: 'Highest subs',
            value: 19.99,
          ),
          _SubsCard(
            title: 'Lowest subs',
            value: 5.99,
          ),
        ],
      ),
    );
  }
}

class _SubsCard extends StatelessWidget {
  final String title;
  final double value;
  const _SubsCard({Key? key, required this.title, required this.value})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(10.w),
        child: Center(
          child: Column(
            children: [
              Text(title),
              Text('\$$value'),
            ],
          ),
        ),
      ),
    );
  }
}
