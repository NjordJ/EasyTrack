// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'spending_category.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SpendingCategoryAdapter extends TypeAdapter<SpendingCategory> {
  @override
  final int typeId = 1;

  @override
  SpendingCategory read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SpendingCategory(
      fields[0] as String,
      fields[1] as double,
      fields[2] as double,
      fields[3] as Icon,
    );
  }

  @override
  void write(BinaryWriter writer, SpendingCategory obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.nameSpendCategory)
      ..writeByte(1)
      ..write(obj.currentSpendCategory)
      ..writeByte(2)
      ..write(obj.budgetSpendCategory)
      ..writeByte(3)
      ..write(obj.iconCategory);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SpendingCategoryAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
