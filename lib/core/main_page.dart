import 'package:auto_route/auto_route.dart';
import 'package:easy_track/core/routes/router.gr.dart';
import 'package:easy_track/core/widgets/app_bar.dart';
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
        SettingsRouter(),
      ],
      bottomNavigationBuilder: (_, tabsRouter) => BottomNavigationBar(
        currentIndex: tabsRouter.activeIndex,
        onTap: tabsRouter.setActiveIndex,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: '',
              backgroundColor: Colors.black26),
          BottomNavigationBarItem(icon: Icon(Icons.grid_4x4), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.calendar_month), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.credit_card), label: ''),
        ],
      ),
    );
  }
}

//IconButton(onPressed: () {}, icon: const Icon(Icons.settings)),

class _CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  final String title;
  final Widget? leading;
  final List<Widget>? actions;
  final Color? appBarColor;
  _CustomAppBar({
    Key? key,
    required this.title,
    this.actions,
    this.leading,
    this.appBarColor,
  }) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: appBarColor ?? Colors.black.withOpacity(0),
      centerTitle: true,
      title: Text(title),
      actions: actions,
      leading: leading,
    );
  }
}

// class _BottomNavBar extends StatefulWidget {
//   final int currentIndex;
//   const _BottomNavBar({
//     Key? key,
//     required this.currentIndex,
//   }) : super(key: key);

//   @override
//   State<_BottomNavBar> createState() => _BottomNavBarState();
// }

// class _BottomNavBarState extends State<_BottomNavBar> {
//   @override
//   Widget build(BuildContext context) {
//     return BottomNavigationBar(
//         backgroundColor: Colors.grey,
//         selectedItemColor: Colors.white,
//         currentIndex: widget.currentIndex,
//         onTap: (int index) {
//           setState(() => widget.currentIndex = index);
//         },
//         items: const <BottomNavigationBarItem>[
//           BottomNavigationBarItem(
//               icon: Icon(Icons.home),
//               label: '',
//               backgroundColor: Colors.black26),
//           BottomNavigationBarItem(icon: Icon(Icons.grid_4x4), label: ''),
//           BottomNavigationBarItem(icon: Icon(Icons.calendar_month), label: ''),
//           BottomNavigationBarItem(icon: Icon(Icons.credit_card), label: ''),
//         ]);
//   }
// }
