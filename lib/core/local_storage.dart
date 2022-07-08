import 'package:easy_track/feature/spendings_and_budget/model/costs.dart';
import 'package:easy_track/feature/spendings_and_budget/model/spending_category.dart';
import 'package:easy_track/feature/subscriptions_and_bills/model/subscription.dart';
import 'package:easy_track/feature/subscriptions_and_bills/model/subscription_categories.dart';
import 'package:hive_flutter/hive_flutter.dart';

class LocalStorage {
  void call() async {
    await Hive.initFlutter();

    const String costsBoxName = 'costs';
    const String spendingCategoryBoxName = 'spending_categories';
    const String subscriptionBoxName = 'subscriptions';
    const String subscriptionCategoriesBoxName = 'subscription_categories';

    //Hive adapters
    Hive.registerAdapter<Costs>(CostsAdapter());
    Hive.registerAdapter<SpendingCategory>(SpendingCategoryAdapter());
    Hive.registerAdapter<Subscription>(SubscriptionAdapter());
    Hive.registerAdapter<SubsCategories>(SubsCategoriesAdapter());

    await Hive.openBox<Costs>(costsBoxName);
    await Hive.openBox<SpendingCategory>(spendingCategoryBoxName);
    await Hive.openBox<Subscription>(subscriptionBoxName);
    await Hive.openBox<SubsCategories>(subscriptionCategoriesBoxName);
  }
}
