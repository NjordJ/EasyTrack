import 'package:hive/hive.dart';

part 'subscription_categories.g.dart';

@HiveType(typeId: 3)
enum SubsCategories {
  @HiveField(0)
  app,
  @HiveField(1)
  fitness,
  @HiveField(2)
  game,
  @HiveField(3)
  media,
  @HiveField(4)
  other,
  @HiveField(5)
  premium,
}
