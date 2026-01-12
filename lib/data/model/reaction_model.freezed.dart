// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reaction_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ReactionModel {

 String? get id; String? get postId; String? get userId; String? get reactionType; DateTime? get createdAt;
/// Create a copy of ReactionModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReactionModelCopyWith<ReactionModel> get copyWith => _$ReactionModelCopyWithImpl<ReactionModel>(this as ReactionModel, _$identity);

  /// Serializes this ReactionModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReactionModel&&(identical(other.id, id) || other.id == id)&&(identical(other.postId, postId) || other.postId == postId)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.reactionType, reactionType) || other.reactionType == reactionType)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,postId,userId,reactionType,createdAt);

@override
String toString() {
  return 'ReactionModel(id: $id, postId: $postId, userId: $userId, reactionType: $reactionType, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $ReactionModelCopyWith<$Res>  {
  factory $ReactionModelCopyWith(ReactionModel value, $Res Function(ReactionModel) _then) = _$ReactionModelCopyWithImpl;
@useResult
$Res call({
 String? id, String? postId, String? userId, String? reactionType, DateTime? createdAt
});




}
/// @nodoc
class _$ReactionModelCopyWithImpl<$Res>
    implements $ReactionModelCopyWith<$Res> {
  _$ReactionModelCopyWithImpl(this._self, this._then);

  final ReactionModel _self;
  final $Res Function(ReactionModel) _then;

/// Create a copy of ReactionModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? postId = freezed,Object? userId = freezed,Object? reactionType = freezed,Object? createdAt = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,postId: freezed == postId ? _self.postId : postId // ignore: cast_nullable_to_non_nullable
as String?,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String?,reactionType: freezed == reactionType ? _self.reactionType : reactionType // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [ReactionModel].
extension ReactionModelPatterns on ReactionModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReactionModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReactionModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReactionModel value)  $default,){
final _that = this;
switch (_that) {
case _ReactionModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReactionModel value)?  $default,){
final _that = this;
switch (_that) {
case _ReactionModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  String? postId,  String? userId,  String? reactionType,  DateTime? createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReactionModel() when $default != null:
return $default(_that.id,_that.postId,_that.userId,_that.reactionType,_that.createdAt);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  String? postId,  String? userId,  String? reactionType,  DateTime? createdAt)  $default,) {final _that = this;
switch (_that) {
case _ReactionModel():
return $default(_that.id,_that.postId,_that.userId,_that.reactionType,_that.createdAt);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  String? postId,  String? userId,  String? reactionType,  DateTime? createdAt)?  $default,) {final _that = this;
switch (_that) {
case _ReactionModel() when $default != null:
return $default(_that.id,_that.postId,_that.userId,_that.reactionType,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReactionModel implements ReactionModel {
  const _ReactionModel({this.id, this.postId, this.userId, this.reactionType, this.createdAt});
  factory _ReactionModel.fromJson(Map<String, dynamic> json) => _$ReactionModelFromJson(json);

@override final  String? id;
@override final  String? postId;
@override final  String? userId;
@override final  String? reactionType;
@override final  DateTime? createdAt;

/// Create a copy of ReactionModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReactionModelCopyWith<_ReactionModel> get copyWith => __$ReactionModelCopyWithImpl<_ReactionModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReactionModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReactionModel&&(identical(other.id, id) || other.id == id)&&(identical(other.postId, postId) || other.postId == postId)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.reactionType, reactionType) || other.reactionType == reactionType)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,postId,userId,reactionType,createdAt);

@override
String toString() {
  return 'ReactionModel(id: $id, postId: $postId, userId: $userId, reactionType: $reactionType, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$ReactionModelCopyWith<$Res> implements $ReactionModelCopyWith<$Res> {
  factory _$ReactionModelCopyWith(_ReactionModel value, $Res Function(_ReactionModel) _then) = __$ReactionModelCopyWithImpl;
@override @useResult
$Res call({
 String? id, String? postId, String? userId, String? reactionType, DateTime? createdAt
});




}
/// @nodoc
class __$ReactionModelCopyWithImpl<$Res>
    implements _$ReactionModelCopyWith<$Res> {
  __$ReactionModelCopyWithImpl(this._self, this._then);

  final _ReactionModel _self;
  final $Res Function(_ReactionModel) _then;

/// Create a copy of ReactionModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? postId = freezed,Object? userId = freezed,Object? reactionType = freezed,Object? createdAt = freezed,}) {
  return _then(_ReactionModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,postId: freezed == postId ? _self.postId : postId // ignore: cast_nullable_to_non_nullable
as String?,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String?,reactionType: freezed == reactionType ? _self.reactionType : reactionType // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
