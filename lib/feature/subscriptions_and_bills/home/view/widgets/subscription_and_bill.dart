import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

late TabController _tabController;
int selectedIndex = 0;

class SubscriptionAndBills extends StatelessWidget {
  const SubscriptionAndBills({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: const <Widget>[
          _TabNavigation(),
          _SubsItem(),
        ],
      ),
    );
  }
}

class _TabNavigation extends StatefulWidget {
  const _TabNavigation({Key? key}) : super(key: key);

  @override
  State<_TabNavigation> createState() => _TabNavigationState();
}

class _TabNavigationState extends State<_TabNavigation>
    with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this)
      ..addListener(() {
        setState(() {
          selectedIndex = _tabController.index;
        });
      });
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 0.9.sw,
      height: 50.h,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(17),
      ),
      child: TabBar(
        controller: _tabController,
        indicator: BoxDecoration(
          borderRadius: BorderRadius.circular(
            17.0,
          ),
          color: Colors.grey.shade600,
        ),
        tabs: const [
          Tab(
            child: Text('Your subscriptions'),
          ),
          Tab(
            child: Text('Upcoming bills'),
          ),
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
      child: TabBarView(
        controller: _tabController,
        children: [
          Container(
            child: const Placeholder(
              child: Center(
                child: Text('Subscriptions'),
              ),
            ),
          ),
          Container(
            child: const Placeholder(
              child: Center(
                child: Text('Bills'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
