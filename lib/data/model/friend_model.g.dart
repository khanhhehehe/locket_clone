// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'friend_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FriendModel _$FriendModelFromJson(Map<String, dynamic> json) => _FriendModel(
  id: json['id'] as String?,
  userId: json['userId'] as String?,
  friendId: json['friendId'] as String?,
  status: json['status'] as String?,
  createdAt: json['createdAt'] == null
      ? null
      : DateTime.parse(json['createdAt'] as String),
);

Map<String, dynamic> _$FriendModelToJson(_FriendModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'friendId': instance.friendId,
      'status': instance.status,
      'createdAt': instance.createdAt?.toIso8601String(),
    };
