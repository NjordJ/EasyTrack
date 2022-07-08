import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BudgetCategories extends StatelessWidget {
  const BudgetCategories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const <Widget>[
        _TabNavigation(),
        _CategoriesList(),
        _AddNewCategory(),
      ],
    );
  }
}

late TabController _tabController;
int selectedIndex = 0;

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
            child: Text('Categories'),
          ),
          Tab(
            child: Text('Costs'),
          ),
        ],
      ),
    );
  }
}

class _CategoriesList extends StatelessWidget {
  const _CategoriesList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 0.9.sw,
      height: 0.28.sh,
      padding: EdgeInsets.only(top: 10.h, bottom: 10.h),
      child: Expanded(
        child: TabBarView(
          controller: _tabController,
          children: [
            Container(
              child: const Placeholder(
                child: Center(
                  child: Text('Categories list'),
                ),
              ),
            ),
            Container(
              child: const Placeholder(
                child: Center(
                  child: Text('Costs list'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _AddNewCategory extends StatelessWidget {
  const _AddNewCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 0.9.sw,
      height: 60.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          style: BorderStyle.solid,
          color: Colors.white,
        ),
      ),
      child: Center(
        child: ListTile(
          onTap: () {},
          title: const Text('Add new category'),
          trailing: const Icon(Icons.add_rounded),
        ),
      ),
    );
  }
}
