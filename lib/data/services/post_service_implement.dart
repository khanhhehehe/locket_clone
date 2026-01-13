import 'package:injectable/injectable.dart';
import 'package:locket_clone/data/model/post_model.dart';
import 'package:locket_clone/domain/services/post_service.dart';

@LazySingleton(as: PostService)
class PostServiceImp implements PostService {
  @override
  Future<void> createPost(PostModel food) {
    // TODO: implement createPost
    throw UnimplementedError();
  }

  @override
  Future<void> deletePost(String id) {
    // TODO: implement deletePost
    throw UnimplementedError();
  }

  @override
  Future<List<PostModel>> getPost() {
    // TODO: implement getPost
    throw UnimplementedError();
  }
}
