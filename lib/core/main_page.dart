import 'package:auto_route/auto_route.dart';
import 'package:easy_track/core/routes/router.gr.dart';
import 'package:easy_track/core/widgets/app_bar.dart';
import 'package:easy_track/core/widgets/bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      floatingActionButton: Padding(
        padding: EdgeInsets.only(
          top: 45.h,
        ),
        child: FloatingActionButton(
          backgroundColor: Colors.amber.shade700,
          elevation: 0.1,
          child: const Icon(Icons.add),
          onPressed: () {
            // ScaffoldMessenger.of(context).showSnackBar(
            //   const SnackBar(
            //     content: Text('FAB pressed'),
            //   ),
            // );
            print('FAB pressed');
          },
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      appBarBuilder: (_, tabsRouter) => CustomAppBar(
        title: tabsRouter.activeIndex == 0
            ? ''
            : (tabsRouter.activeIndex == 1
                ? 'Spending & Budgets'
                : (tabsRouter.activeIndex == 2 ? 'Calendar' : 'History')),
        leading: const AutoLeadingButton(),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              context.router.navigate(const SettingsRouter());
            },
          ),
        ],
      ),
      routes: const [
        HomeRouter(),
        BudgetAndSpendingsRouter(),
        CalendarRouter(),
        HistoryRouter(),
      ],
      bottomNavigationBuilder: (_, tabsRouter) =>
          CustomBottomNavigatiorBar(router: tabsRouter),
    );
  }
}
