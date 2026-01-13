import 'package:injectable/injectable.dart';
import 'package:locket_clone/common/configs/locators.dart';
import 'package:locket_clone/data/model/post_model.dart';
import 'package:locket_clone/domain/repositories/post_repository.dart';
import 'package:locket_clone/domain/services/post_service.dart';

@LazySingleton(as: PostRepository)
class PostRepositoryImp extends PostRepository {
  final PostService _service;

  PostRepositoryImp() : _service = getIt<PostService>();

  @override
  Future<List<PostModel>> getPost() async {
    List<PostModel> posts = await _service.getPost();
    return posts;
  }

  @override
  Future<void> createPost(PostModel post) async {
    await _service.createPost(post);
  }
}
