// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'costs.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CostsAdapter extends TypeAdapter<Costs> {
  @override
  final int typeId = 0;

  @override
  Costs read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Costs(
      fields[0] as String,
      fields[1] as String,
      fields[2] as double,
    );
  }

  @override
  void write(BinaryWriter writer, Costs obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.nameCost)
      ..writeByte(1)
      ..write(obj.descriptionCost)
      ..writeByte(2)
      ..write(obj.priceCost);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CostsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
