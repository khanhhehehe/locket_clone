// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PostState {

 List<Post>? get posts; PostStatus? get getStatus; PostStatus? get createStatus; PostStatus? get deleteStatus;
/// Create a copy of PostState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PostStateCopyWith<PostState> get copyWith => _$PostStateCopyWithImpl<PostState>(this as PostState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PostState&&const DeepCollectionEquality().equals(other.posts, posts)&&(identical(other.getStatus, getStatus) || other.getStatus == getStatus)&&(identical(other.createStatus, createStatus) || other.createStatus == createStatus)&&(identical(other.deleteStatus, deleteStatus) || other.deleteStatus == deleteStatus));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(posts),getStatus,createStatus,deleteStatus);

@override
String toString() {
  return 'PostState(posts: $posts, getStatus: $getStatus, createStatus: $createStatus, deleteStatus: $deleteStatus)';
}


}

/// @nodoc
abstract mixin class $PostStateCopyWith<$Res>  {
  factory $PostStateCopyWith(PostState value, $Res Function(PostState) _then) = _$PostStateCopyWithImpl;
@useResult
$Res call({
 List<Post>? posts, PostStatus? getStatus, PostStatus? createStatus, PostStatus? deleteStatus
});




}
/// @nodoc
class _$PostStateCopyWithImpl<$Res>
    implements $PostStateCopyWith<$Res> {
  _$PostStateCopyWithImpl(this._self, this._then);

  final PostState _self;
  final $Res Function(PostState) _then;

/// Create a copy of PostState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? posts = freezed,Object? getStatus = freezed,Object? createStatus = freezed,Object? deleteStatus = freezed,}) {
  return _then(_self.copyWith(
posts: freezed == posts ? _self.posts : posts // ignore: cast_nullable_to_non_nullable
as List<Post>?,getStatus: freezed == getStatus ? _self.getStatus : getStatus // ignore: cast_nullable_to_non_nullable
as PostStatus?,createStatus: freezed == createStatus ? _self.createStatus : createStatus // ignore: cast_nullable_to_non_nullable
as PostStatus?,deleteStatus: freezed == deleteStatus ? _self.deleteStatus : deleteStatus // ignore: cast_nullable_to_non_nullable
as PostStatus?,
  ));
}

}


/// Adds pattern-matching-related methods to [PostState].
extension PostStatePatterns on PostState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PostState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PostState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PostState value)  $default,){
final _that = this;
switch (_that) {
case _PostState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PostState value)?  $default,){
final _that = this;
switch (_that) {
case _PostState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<Post>? posts,  PostStatus? getStatus,  PostStatus? createStatus,  PostStatus? deleteStatus)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PostState() when $default != null:
return $default(_that.posts,_that.getStatus,_that.createStatus,_that.deleteStatus);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<Post>? posts,  PostStatus? getStatus,  PostStatus? createStatus,  PostStatus? deleteStatus)  $default,) {final _that = this;
switch (_that) {
case _PostState():
return $default(_that.posts,_that.getStatus,_that.createStatus,_that.deleteStatus);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<Post>? posts,  PostStatus? getStatus,  PostStatus? createStatus,  PostStatus? deleteStatus)?  $default,) {final _that = this;
switch (_that) {
case _PostState() when $default != null:
return $default(_that.posts,_that.getStatus,_that.createStatus,_that.deleteStatus);case _:
  return null;

}
}

}

/// @nodoc


class _PostState implements PostState {
  const _PostState({final  List<Post>? posts = const [], this.getStatus = PostStatus.init, this.createStatus = PostStatus.init, this.deleteStatus = PostStatus.init}): _posts = posts;
  

 final  List<Post>? _posts;
@override@JsonKey() List<Post>? get posts {
  final value = _posts;
  if (value == null) return null;
  if (_posts is EqualUnmodifiableListView) return _posts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey() final  PostStatus? getStatus;
@override@JsonKey() final  PostStatus? createStatus;
@override@JsonKey() final  PostStatus? deleteStatus;

/// Create a copy of PostState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PostStateCopyWith<_PostState> get copyWith => __$PostStateCopyWithImpl<_PostState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PostState&&const DeepCollectionEquality().equals(other._posts, _posts)&&(identical(other.getStatus, getStatus) || other.getStatus == getStatus)&&(identical(other.createStatus, createStatus) || other.createStatus == createStatus)&&(identical(other.deleteStatus, deleteStatus) || other.deleteStatus == deleteStatus));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_posts),getStatus,createStatus,deleteStatus);

@override
String toString() {
  return 'PostState(posts: $posts, getStatus: $getStatus, createStatus: $createStatus, deleteStatus: $deleteStatus)';
}


}

/// @nodoc
abstract mixin class _$PostStateCopyWith<$Res> implements $PostStateCopyWith<$Res> {
  factory _$PostStateCopyWith(_PostState value, $Res Function(_PostState) _then) = __$PostStateCopyWithImpl;
@override @useResult
$Res call({
 List<Post>? posts, PostStatus? getStatus, PostStatus? createStatus, PostStatus? deleteStatus
});




}
/// @nodoc
class __$PostStateCopyWithImpl<$Res>
    implements _$PostStateCopyWith<$Res> {
  __$PostStateCopyWithImpl(this._self, this._then);

  final _PostState _self;
  final $Res Function(_PostState) _then;

/// Create a copy of PostState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? posts = freezed,Object? getStatus = freezed,Object? createStatus = freezed,Object? deleteStatus = freezed,}) {
  return _then(_PostState(
posts: freezed == posts ? _self._posts : posts // ignore: cast_nullable_to_non_nullable
as List<Post>?,getStatus: freezed == getStatus ? _self.getStatus : getStatus // ignore: cast_nullable_to_non_nullable
as PostStatus?,createStatus: freezed == createStatus ? _self.createStatus : createStatus // ignore: cast_nullable_to_non_nullable
as PostStatus?,deleteStatus: freezed == deleteStatus ? _self.deleteStatus : deleteStatus // ignore: cast_nullable_to_non_nullable
as PostStatus?,
  ));
}


}

// dart format on
