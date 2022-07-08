import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

part 'spending_category.g.dart';

@HiveType(typeId: 1)
class SpendingCategory extends Equatable {
  @HiveField(0)
  final String nameSpendCategory;
  @HiveField(1)
  final double currentSpendCategory;
  @HiveField(2)
  final double budgetSpendCategory;
  @HiveField(3)
  final Icon iconCategory;

  const SpendingCategory(
    this.nameSpendCategory,
    this.currentSpendCategory,
    this.budgetSpendCategory,
    this.iconCategory,
  );

  @override
  List<Object?> get props => [
        nameSpendCategory,
        currentSpendCategory,
        budgetSpendCategory,
        iconCategory,
      ];
}
