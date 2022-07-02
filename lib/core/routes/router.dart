import 'package:auto_route/auto_route.dart';
import 'package:easy_track/core/main_page.dart';
import 'package:easy_track/feature/calendar/view/pages/calendar_page.dart';
import 'package:easy_track/feature/history/view/pages/history_page.dart';
import 'package:easy_track/feature/home/view/pages/home_page.dart';
import 'package:easy_track/feature/settings/view/pages/settings_page.dart';
import 'package:easy_track/feature/spendings_and_budget/view/pages/spendings_and_budget_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: [
    AutoRoute(
      path: '/',
      page: MainPage,
      children: [
        //HomePage
        AutoRoute(
          path: 'home',
          name: 'HomeRouter',
          page: EmptyRouterPage,
          children: [
            AutoRoute(
              path: '',
              page: HomePage,
            ),
          ],
        ),
        //Budget&Spendings
        AutoRoute(
          path: 'budgetandspendings',
          name: 'BudgetAndSpendingsRouter',
          page: EmptyRouterPage,
          children: [
            AutoRoute(
              path: '',
              page: SpendingsAndBudgetPage,
            ),
          ],
        ),
        //Calendar
        AutoRoute(
          path: 'calendar',
          name: 'CalendarRouter',
          page: EmptyRouterPage,
          children: [
            AutoRoute(
              path: '',
              page: CalendarPage,
            ),
          ],
        ),
        //History
        AutoRoute(
          path: 'history',
          name: 'HistoryRouter',
          page: EmptyRouterPage,
          children: [
            AutoRoute(
              path: '',
              page: HistoryPage,
            ),
          ],
        ),
        //Settings
        AutoRoute(
          path: 'settings',
          name: 'SettingsRouter',
          page: SettingsPage,
        ),
      ],
    ),
  ],
)
class $AppRouter {}
