import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

enum SubsCategories {
  app,
  fitness,
  game,
  media,
  other,
  premium,
}

class Subscription extends Equatable {
  final String nameSub;
  final String descriptionSub;
  final double priceSub;
  final SubsCategories subsCategories;
  final DateTime firstPaymentSub;
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
