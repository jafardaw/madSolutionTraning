// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ProductModelAdapter extends TypeAdapter<ProductModel> {
  @override
  final int typeId = 0;

  @override
  ProductModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ProductModel(
      productId: fields[0] as int,
      price: fields[1] as int,
      size: fields[2] as String,
      rating: fields[3] as double,
      humidity: fields[4] as int,
      measuerement: fields[5] as String,
      category: fields[6] as String,
      productName: fields[7] as String,
      imageURL: fields[8] as String,
      isFavorated: fields[9] as bool,
      decription: fields[10] as String,
      isSelected: fields[11] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, ProductModel obj) {
    writer
      ..writeByte(12)
      ..writeByte(0)
      ..write(obj.productId)
      ..writeByte(1)
      ..write(obj.price)
      ..writeByte(2)
      ..write(obj.size)
      ..writeByte(3)
      ..write(obj.rating)
      ..writeByte(4)
      ..write(obj.humidity)
      ..writeByte(5)
      ..write(obj.measuerement)
      ..writeByte(6)
      ..write(obj.category)
      ..writeByte(7)
      ..write(obj.productName)
      ..writeByte(8)
      ..write(obj.imageURL)
      ..writeByte(9)
      ..write(obj.isFavorated)
      ..writeByte(10)
      ..write(obj.decription)
      ..writeByte(11)
      ..write(obj.isSelected);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProductModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
