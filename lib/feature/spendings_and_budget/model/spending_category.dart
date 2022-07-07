import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class SpendingCategory extends Equatable {
  final String nameSpendCategory;
  final double currentSpendCategory;
  final double budgetSpendCategory;
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
