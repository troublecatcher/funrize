// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'process_emotion.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ProcessEmotionAdapter extends TypeAdapter<ProcessEmotion> {
  @override
  final int typeId = 3;

  @override
  ProcessEmotion read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ProcessEmotion(
      name: fields[0] as String,
    );
  }

  @override
  void write(BinaryWriter writer, ProcessEmotion obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.name);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProcessEmotionAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
