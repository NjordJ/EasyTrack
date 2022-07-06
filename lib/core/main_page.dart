import 'package:auto_route/auto_route.dart';
import 'package:easy_track/core/routes/router.gr.dart';
import 'package:easy_track/core/widgets/app_bar.dart';
import 'package:easy_track/core/widgets/bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      appBarBuilder: (_, tabsRouter) => CustomAppBar(
        title: 'EasyTrack',
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
        SettingsRouter(),
      ],
      bottomNavigationBuilder: (_, tabsRouter) =>
          CustomBottomNavigatiorBar(router: tabsRouter),
    );
  }
}
