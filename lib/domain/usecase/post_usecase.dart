import 'package:locket_clone/data/model/post_model.dart';
import 'package:locket_clone/domain/entities/post.dart';

abstract class PostUseCase {
  Future<List<Post>> getPost();
  Future<void> createPost(PostModel post);
  // Future<void> updateFood(String id, FoodModel food);
  // Future<void> deleteFood(String id);
}
