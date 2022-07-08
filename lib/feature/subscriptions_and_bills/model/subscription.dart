import 'package:easy_track/feature/subscriptions_and_bills/model/subscription_categories.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

part 'subscription.g.dart';

@HiveType(typeId: 2)
class Subscription extends Equatable {
  @HiveField(0)
  final String nameSub;
  @HiveField(1)
  final String descriptionSub;
  @HiveField(2)
  final double priceSub;
  @HiveField(3)
  final SubsCategories subsCategories;
  @HiveField(4)
  final DateTime firstPaymentSub;
  @HiveField(5)
  final Widget iconSub;

  const Subscription(
    this.nameSub,
    this.descriptionSub,
    this.priceSub,
    this.firstPaymentSub,
    this.subsCategories,
    this.iconSub,
  );

  @override
  List<Object?> get props => [
        nameSub,
        descriptionSub,
        priceSub,
        subsCategories,
        firstPaymentSub,
        iconSub,
      ];
}
