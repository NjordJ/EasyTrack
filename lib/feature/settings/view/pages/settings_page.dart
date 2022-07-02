import 'package:easy_track/core/widgets/app_bar.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: <Widget>[
              Container(
                child: Column(
                  children: [
                    const Text('My subscriptions'),
                    Card(
                      child: Column(
                        children: const [
                          _SettingsListTile(
                            leadingIcon: Icon(Icons.sort),
                            title: Text('Sorting'),
                            trailing: null,
                          ),
                          _SettingsListTile(
                            leadingIcon: Icon(Icons.circle),
                            title: Text('Summary'),
                            trailing: null,
                          ),
                          _SettingsListTile(
                            leadingIcon: Icon(Icons.money_sharp),
                            title: Text('Default currency'),
                            trailing: null,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _SettingsListTile extends StatelessWidget {
  final Icon? leadingIcon;
  final Widget title;
  final Widget? trailing;
  const _SettingsListTile({
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
