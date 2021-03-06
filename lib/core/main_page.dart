import 'package:auto_route/auto_route.dart';
import 'package:easy_track/core/routes/router.gr.dart';
import 'package:easy_track/core/widgets/app_bar.dart';
import 'package:easy_track/core/widgets/bottom_navigation_bar.dart';
import 'package:easy_track/feature/subscriptions_and_bills/home/view/widgets/subscription_and_bill.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
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
      bottomNavigationBuilder: (_, tabsRouter) => CustomBottomNavigatiorBar(
        router: tabsRouter,
      ),
    );
  }
}

class _FloatingActionButtonForNavBar extends StatelessWidget {
  const _FloatingActionButtonForNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      color: Colors.amber.shade700,
      icon: const Icon(Icons.add),
      onPressed: () {
        print('FAB click');
      },
    );
  }
}
