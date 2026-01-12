// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reaction_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ReactionModel _$ReactionModelFromJson(Map<String, dynamic> json) =>
    _ReactionModel(
      id: json['id'] as String?,
      postId: json['postId'] as String?,
      userId: json['userId'] as String?,
      reactionType: json['reactionType'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$ReactionModelToJson(_ReactionModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'postId': instance.postId,
      'userId': instance.userId,
      'reactionType': instance.reactionType,
      'createdAt': instance.createdAt?.toIso8601String(),
    };
