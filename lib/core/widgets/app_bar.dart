import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  final String title;
  final Widget? leading;
  final List<Widget>? actions;
  final Color? appBarColor;
  CustomAppBar({
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
