// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i8;

import '../../feature/calendar/view/pages/calendar_page.dart' as _i6;
import '../../feature/history/view/pages/history_page.dart' as _i7;
import '../../feature/home/view/pages/home_page.dart' as _i4;
import '../../feature/settings/view/pages/settings_page.dart' as _i2;
import '../../feature/spendings_and_budget/view/pages/spendings_and_budget_page.dart'
    as _i5;
import '../main_page.dart' as _i1;

class AppRouter extends _i3.RootStackRouter {
  AppRouter([_i8.GlobalKey<_i8.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    MainRoute.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.MainPage());
    },
    SettingsRouter.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.SettingsPage());
    },
    HomeRouter.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.EmptyRouterPage());
    },
    BudgetAndSpendingsRouter.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.EmptyRouterPage());
    },
    CalendarRouter.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.EmptyRouterPage());
    },
    HistoryRouter.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.EmptyRouterPage());
    },
    HomeRoute.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.HomePage());
    },
    SpendingsAndBudgetRoute.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.SpendingsAndBudgetPage());
    },
    CalendarRoute.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.CalendarPage());
    },
    HistoryRoute.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.HistoryPage());
    }
  };

  @override
  List<_i3.RouteConfig> get routes => [
        _i3.RouteConfig(MainRoute.name, path: '/', children: [
          _i3.RouteConfig(HomeRouter.name,
              path: 'home',
              parent: MainRoute.name,
              children: [
                _i3.RouteConfig(HomeRoute.name,
                    path: '', parent: HomeRouter.name)
              ]),
          _i3.RouteConfig(BudgetAndSpendingsRouter.name,
              path: 'budgetandspendings',
              parent: MainRoute.name,
              children: [
                _i3.RouteConfig(SpendingsAndBudgetRoute.name,
                    path: '', parent: BudgetAndSpendingsRouter.name)
              ]),
          _i3.RouteConfig(CalendarRouter.name,
              path: 'calendar',
              parent: MainRoute.name,
              children: [
                _i3.RouteConfig(CalendarRoute.name,
                    path: '', parent: CalendarRouter.name)
              ]),
          _i3.RouteConfig(HistoryRouter.name,
              path: 'history',
              parent: MainRoute.name,
              children: [
                _i3.RouteConfig(HistoryRoute.name,
                    path: '', parent: HistoryRouter.name)
              ])
        ]),
        _i3.RouteConfig(SettingsRouter.name, path: 'settings')
      ];
}

/// generated route for
/// [_i1.MainPage]
class MainRoute extends _i3.PageRouteInfo<void> {
  const MainRoute({List<_i3.PageRouteInfo>? children})
      : super(MainRoute.name, path: '/', initialChildren: children);

  static const String name = 'MainRoute';
}

/// generated route for
/// [_i2.SettingsPage]
class SettingsRouter extends _i3.PageRouteInfo<void> {
  const SettingsRouter() : super(SettingsRouter.name, path: 'settings');

  static const String name = 'SettingsRouter';
}

/// generated route for
/// [_i3.EmptyRouterPage]
class HomeRouter extends _i3.PageRouteInfo<void> {
  const HomeRouter({List<_i3.PageRouteInfo>? children})
      : super(HomeRouter.name, path: 'home', initialChildren: children);

  static const String name = 'HomeRouter';
}

/// generated route for
/// [_i3.EmptyRouterPage]
class BudgetAndSpendingsRouter extends _i3.PageRouteInfo<void> {
  const BudgetAndSpendingsRouter({List<_i3.PageRouteInfo>? children})
      : super(BudgetAndSpendingsRouter.name,
            path: 'budgetandspendings', initialChildren: children);

  static const String name = 'BudgetAndSpendingsRouter';
}

/// generated route for
/// [_i3.EmptyRouterPage]
class CalendarRouter extends _i3.PageRouteInfo<void> {
  const CalendarRouter({List<_i3.PageRouteInfo>? children})
      : super(CalendarRouter.name, path: 'calendar', initialChildren: children);

  static const String name = 'CalendarRouter';
}

/// generated route for
/// [_i3.EmptyRouterPage]
class HistoryRouter extends _i3.PageRouteInfo<void> {
  const HistoryRouter({List<_i3.PageRouteInfo>? children})
      : super(HistoryRouter.name, path: 'history', initialChildren: children);

  static const String name = 'HistoryRouter';
}

/// generated route for
/// [_i4.HomePage]
class HomeRoute extends _i3.PageRouteInfo<void> {
  const HomeRoute() : super(HomeRoute.name, path: '');

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i5.SpendingsAndBudgetPage]
class SpendingsAndBudgetRoute extends _i3.PageRouteInfo<void> {
  const SpendingsAndBudgetRoute()
      : super(SpendingsAndBudgetRoute.name, path: '');

  static const String name = 'SpendingsAndBudgetRoute';
}

/// generated route for
/// [_i6.CalendarPage]
class CalendarRoute extends _i3.PageRouteInfo<void> {
  const CalendarRoute() : super(CalendarRoute.name, path: '');

  static const String name = 'CalendarRoute';
}

/// generated route for
/// [_i7.HistoryPage]
class HistoryRoute extends _i3.PageRouteInfo<void> {
  const HistoryRoute() : super(HistoryRoute.name, path: '');

  static const String name = 'HistoryRoute';
}
