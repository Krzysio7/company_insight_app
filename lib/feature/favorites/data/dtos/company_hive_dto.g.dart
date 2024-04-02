// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company_hive_dto.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CompanyTypeAdapter extends TypeAdapter<CompanyHiveDto> {
  @override
  final int typeId = 0;

  @override
  CompanyHiveDto read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CompanyHiveDto(
      symbol: fields[0] as String,
      name: fields[1] as String?,
      stockExchange: fields[3] as String?,
      exchangeShortName: fields[4] as String?,
      currency: fields[2] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, CompanyHiveDto obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.symbol)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.currency)
      ..writeByte(3)
      ..write(obj.stockExchange)
      ..writeByte(4)
      ..write(obj.exchangeShortName);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CompanyTypeAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
