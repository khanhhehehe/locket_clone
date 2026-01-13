import 'package:locket_clone/data/model/post_model.dart';

abstract class PostService {
  Future<List<PostModel>> getPost();
  Future<void> createPost(PostModel food);
  Future<void> deletePost(String id);
}
