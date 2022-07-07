import 'package:equatable/equatable.dart';

class Costs extends Equatable {
  final String nameCost;
  final String descriptionCost;
  final double priceCost;

  const Costs(
    this.nameCost,
    this.descriptionCost,
    this.priceCost,
  );

  @override
  List<Object?> get props => [];
}
