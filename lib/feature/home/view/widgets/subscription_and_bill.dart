import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SubscriptionAndBills extends StatelessWidget {
  const SubscriptionAndBills({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: const <Widget>[
          _NavigationRow(),
          _SubsItem(),
        ],
      ),
    );
  }
}

class _SubsItem extends StatelessWidget {
  const _SubsItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 3.05,
      child: const Placeholder(),
    );
  }
}

class _NavigationRow extends StatelessWidget {
  const _NavigationRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 0.9.sw,
      decoration: BoxDecoration(
          color: Colors.black, borderRadius: BorderRadius.circular(10)),
      child: NavigationBar(
          elevation: 0,
          selectedIndex: 0,
          backgroundColor: Colors.transparent,
          labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
          destinations: const [
            NavigationDestination(
                icon: Text('Your subscriptions'),
                selectedIcon: null,
                label: ''),
            NavigationDestination(
                icon: Text('Upcoming bills'), selectedIcon: null, label: ''),
          ]),
    );
  }
}
