import 'package:injectable/injectable.dart';
import 'package:locket_clone/common/configs/locators.dart';
import 'package:locket_clone/data/model/post_model.dart';
import 'package:locket_clone/domain/entities/post.dart';
import 'package:locket_clone/domain/repositories/post_repository.dart';
import 'package:locket_clone/domain/usecase/post_usecase.dart';

@LazySingleton(as: PostUseCase)
class PostUseCaseImp extends PostUseCase {
  final PostRepository _repository;

  PostUseCaseImp() : _repository = getIt<PostRepository>();

  @override
  Future<List<Post>> getPost() async {
    List<PostModel> listPost = await _repository.getPost();
    return listPost
        .map(
          (e) => Post(
            id: e.id,
            caption: e.caption,
            createdAt: e.createdAt,
            imageUrl: e.imageUrl,
            userId: e.userId,
            expiresAt: e.expiresAt,
          ),
        )
        .toList();
  }

  @override
  Future<void> createPost(PostModel post) async {
    await _repository.createPost(post);
  }
}
