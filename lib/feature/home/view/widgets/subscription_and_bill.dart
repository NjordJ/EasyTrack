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
      width: 0.9.sw,
      height: 0.27.sh,
      child: const Placeholder(),
    );
  }
}

int navIndex = 0;

class _NavigationRow extends StatefulWidget {
  const _NavigationRow({
    Key? key,
  }) : super(key: key);

  @override
  State<_NavigationRow> createState() => _NavigationRowState();
}

class _NavigationRowState extends State<_NavigationRow> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 0.9.sw,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(10),
      ),
      child: NavigationBar(
          elevation: 1,
          selectedIndex: navIndex,
          onDestinationSelected: (index) => setState(() {
                navIndex = index;
              }),
          backgroundColor: Colors.transparent,
          labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
          destinations: const [
            NavigationDestination(
              icon: Text('Your subscriptions'),
              label: '',
            ),
            NavigationDestination(
              icon: Text('Upcoming bills'),
              label: '',
            ),
          ]),
    );
  }
}
