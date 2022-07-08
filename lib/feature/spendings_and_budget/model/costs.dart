import 'package:equatable/equatable.dart';
import 'package:hive/hive.dart';

part 'costs.g.dart';

@HiveType(typeId: 0)
class Costs extends Equatable {
  @HiveField(0)
  final String nameCost;
  @HiveField(1)
  final String descriptionCost;
  @HiveField(2)
  final double priceCost;

  const Costs(
    this.nameCost,
    this.descriptionCost,
    this.priceCost,
  );

  @override
  List<Object?> get props => [];
}
