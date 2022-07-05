import 'package:easy_track/feature/spendings_and_budget/view/widgets/arc_budget_expences.dart';
import 'package:easy_track/feature/spendings_and_budget/view/widgets/budget_categories.dart';
import 'package:flutter/material.dart';

class SpendingsAndBudgetPage extends StatelessWidget {
  const SpendingsAndBudgetPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: const <Widget>[
              ArcBudgetExpences(),
              BudgetCategories(),
            ],
          ),
        ),
      ),
    );
  }
}
