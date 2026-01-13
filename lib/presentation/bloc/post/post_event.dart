import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:locket_clone/data/model/post_model.dart';

part 'post_event.freezed.dart';

@freezed
class PostEvent with _$PostEvent {
  const factory PostEvent.getPosts() = _GetPosts;

  const factory PostEvent.createPost({@Default(PostModel()) PostModel post}) =
      _CreatePost;

  const factory PostEvent.deletePost({@Default('') String id}) = _DeletePost;
}
