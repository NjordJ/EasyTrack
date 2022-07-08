import 'package:easy_track/core/widgets/app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Settings',
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            children: <Widget>[
              Column(
                children: const [
                  Text('My subscriptions'),
                  _SubscriptionSection(),
                  Text('Apperance'),
                  _ApperanceSection(),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _SubscriptionSection extends StatelessWidget {
  const _SubscriptionSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 0.95.sw,
      child: Card(
        elevation: 5.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: const [
            _SettingsItemListTile(
              leadingIcon: Icon(Icons.sort),
              title: Text('Sorting'),
              trailing: null,
            ),
            _SettingsItemListTile(
              leadingIcon: Icon(Icons.circle),
              title: Text('Summary'),
              trailing: null,
            ),
            _SettingsItemListTile(
              leadingIcon: Icon(Icons.money_sharp),
              title: Text('Default currency'),
              trailing: null,
            ),
          ],
        ),
      ),
    );
  }
}

class _ApperanceSection extends StatelessWidget {
  const _ApperanceSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 0.95.sw,
      child: Card(
        elevation: 5.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: const [
            _SettingsItemListTile(
              leadingIcon: Icon(Icons.square_outlined),
              title: Text('App icon'),
              trailing: null,
            ),
            _SettingsItemListTile(
              leadingIcon: Icon(Icons.sunny),
              title: Text('Theme'),
              trailing: null,
            ),
          ],
        ),
      ),
    );
  }
}

class _SettingsItemListTile extends StatelessWidget {
  final Icon? leadingIcon;
  final Widget title;
  final Widget? trailing;
  const _SettingsItemListTile({
    Key? key,
    this.leadingIcon,
    required this.title,
    this.trailing,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: Colors.transparent,
      leading: leadingIcon,
      title: title,
      trailing: trailing,
    );
  }
}
