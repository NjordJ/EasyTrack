// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subscription_categories.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SubsCategoriesAdapter extends TypeAdapter<SubsCategories> {
  @override
  final int typeId = 3;

  @override
  SubsCategories read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return SubsCategories.app;
      case 1:
        return SubsCategories.fitness;
      case 2:
        return SubsCategories.game;
      case 3:
        return SubsCategories.media;
      case 4:
        return SubsCategories.other;
      case 5:
        return SubsCategories.premium;
      default:
        return SubsCategories.app;
    }
  }

  @override
  void write(BinaryWriter writer, SubsCategories obj) {
    switch (obj) {
      case SubsCategories.app:
        writer.writeByte(0);
        break;
      case SubsCategories.fitness:
        writer.writeByte(1);
        break;
      case SubsCategories.game:
        writer.writeByte(2);
        break;
      case SubsCategories.media:
        writer.writeByte(3);
        break;
      case SubsCategories.other:
        writer.writeByte(4);
        break;
      case SubsCategories.premium:
        writer.writeByte(5);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SubsCategoriesAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
