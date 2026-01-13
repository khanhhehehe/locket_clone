import 'package:locket_clone/data/model/post_model.dart';

abstract class PostRepository {
  Future<List<PostModel>> getPost();
  Future<void> createPost(PostModel post);
  // Future<void> deleteFood(String id);
}
