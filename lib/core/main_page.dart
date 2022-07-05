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
      ),
      routes: const [
        HomeRouter(),
        BudgetAndSpendingsRouter(),
        CalendarRouter(),
        HistoryRouter(),
        //SettingsRouter(),
      ],
      bottomNavigationBuilder: (_, tabsRouter) =>
          CustomBottomNavigatiorBar(router: tabsRouter),
    );
  }
}

// BottomNavigationBar(
//         currentIndex: tabsRouter.activeIndex,
//         onTap: tabsRouter.setActiveIndex,
//         items: const <BottomNavigationBarItem>[
//           BottomNavigationBarItem(
//               icon: Icon(Icons.home),
//               label: '',
//               backgroundColor: Colors.black26),
//           BottomNavigationBarItem(icon: Icon(Icons.grid_4x4), label: ''),
//           BottomNavigationBarItem(icon: Icon(Icons.calendar_month), label: ''),
//           BottomNavigationBarItem(icon: Icon(Icons.credit_card), label: ''),
//         ],
//       ),
