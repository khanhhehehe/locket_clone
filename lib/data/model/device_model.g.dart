// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DeviceModel _$DeviceModelFromJson(Map<String, dynamic> json) => _DeviceModel(
  id: json['id'] as String?,
  userId: json['userId'] as String?,
  deviceToken: json['deviceToken'] as String?,
  platform: json['platform'] as String?,
  createdAt: json['createdAt'] == null
      ? null
      : DateTime.parse(json['createdAt'] as String),
);

Map<String, dynamic> _$DeviceModelToJson(_DeviceModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'deviceToken': instance.deviceToken,
      'platform': instance.platform,
      'createdAt': instance.createdAt?.toIso8601String(),
    };
