// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subscription.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SubscriptionAdapter extends TypeAdapter<Subscription> {
  @override
  final int typeId = 2;

  @override
  Subscription read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Subscription(
      fields[0] as String,
      fields[1] as String,
      fields[2] as double,
      fields[4] as DateTime,
      fields[3] as SubsCategories,
      fields[5] as Widget,
    );
  }

  @override
  void write(BinaryWriter writer, Subscription obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.nameSub)
      ..writeByte(1)
      ..write(obj.descriptionSub)
      ..writeByte(2)
      ..write(obj.priceSub)
      ..writeByte(3)
      ..write(obj.subsCategories)
      ..writeByte(4)
      ..write(obj.firstPaymentSub)
      ..writeByte(5)
      ..write(obj.iconSub);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SubscriptionAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
