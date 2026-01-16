import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:locket_clone/domain/entities/post.dart';

part 'post_state.freezed.dart';

enum PostStatus { init, loading, success, fail }

@freezed
abstract class PostState with _$PostState {
  const factory PostState({
    @Default([]) List<Post>? posts,
    @Default(PostStatus.init) PostStatus? getStatus,
    @Default(PostStatus.init) PostStatus? createStatus,
    @Default(PostStatus.init) PostStatus? deleteStatus,
  }) = _PostState;
}
