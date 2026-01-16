import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:locket_clone/domain/entities/post.dart';
import 'package:locket_clone/domain/usecase/post_usecase.dart';
import 'package:locket_clone/presentation/bloc/post/post_event.dart';
import 'package:locket_clone/presentation/bloc/post/post_state.dart';

@lazySingleton
class PostBloc extends Bloc<PostEvent, PostState> {
  final PostUseCase _postUseCase;

  PostBloc(this._postUseCase) : super(PostState()) {
    on<PostEvent>(_onEvent);
  }

  Future<void> _onEvent(PostEvent event, Emitter<PostState> emit) async {
    await event.when(
      getPosts: () async => _getPosts(emit),
      createPost: (post) async => _createPost(post, emit),
      deletePost: (id) async => _deletePost(id, emit),
    );
  }

  Future<void> _getPosts(Emitter<PostState> emit) async {
    try {
      emit(state.copyWith(getStatus: PostStatus.loading));
      final posts = await _postUseCase.getPost();
      emit(state.copyWith(posts: posts, getStatus: PostStatus.success));
    } catch (e) {
      emit(state.copyWith(getStatus: PostStatus.fail));
    }
  }

  Future<void> _createPost(Post post, Emitter<PostState> emit) async {
    try {
      emit(state.copyWith(createStatus: PostStatus.loading));
      await _postUseCase.createPost(post);
      add(const PostEvent.getPosts());
    } catch (e) {
      emit(state.copyWith(createStatus: PostStatus.fail));
    }
  }

  Future<void> _deletePost(String id, Emitter<PostState> emit) async {
    try {
      emit(state.copyWith(deleteStatus: PostStatus.loading));
      // await _postUseCase.deletePost(id);
      add(const PostEvent.getPosts()); // reload list
    } catch (e) {
      emit(state.copyWith(deleteStatus: PostStatus.fail));
    }
  }
}
