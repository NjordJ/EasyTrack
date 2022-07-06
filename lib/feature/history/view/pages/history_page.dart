import 'package:flutter/material.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: const <Widget>[
              _HistoryCard(
                categoryIcon: Icon(Icons.food_bank),
                costName: Text('Cafe'),
                dateSpend: Text('00.00.0000'),
              ),
              _HistoryCard(
                categoryIcon: Icon(Icons.food_bank),
                costName: Text('Cafe'),
                dateSpend: Text('00.00.0000'),
              ),
              _HistoryCard(
                categoryIcon: Icon(Icons.food_bank),
                costName: Text('Cafe'),
                dateSpend: Text('00.00.0000'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _HistoryCard extends StatelessWidget {
  final Widget categoryIcon;
  final Widget costName;
  final Widget dateSpend;
  const _HistoryCard({
    Key? key,
    required this.categoryIcon,
    required this.costName,
    required this.dateSpend,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: categoryIcon,
      title: costName,
      subtitle: dateSpend,
    );
  }
}
