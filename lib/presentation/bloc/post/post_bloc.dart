import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:locket_clone/domain/usecase/post_usecase.dart';
import 'package:locket_clone/data/model/post_model.dart';
import 'package:locket_clone/presentation/bloc/post/post_state.dart';
import 'package:locket_clone/presentation/bloc/post/post_event.dart';
import 'package:locket_clone/di/injection.dart';

part 'post_event.dart';
part 'post_state.dart';
part 'post_bloc.freezed.dart';

@lazySingleton
class PostBloc extends Bloc<PostEvent, PostState> {
  final PostUseCase _postUseCase;

  PostBloc(this._postUseCase) : super(const PostState()) {
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
      emit(state.copyWith(status: PostStatus.loading));
      final posts = await _postUseCase.getPosts();
      emit(state.copyWith(posts: posts, status: PostStatus.success));
    } catch (e) {
      emit(
        state.copyWith(status: PostStatus.failure, errorMessage: e.toString()),
      );
    }
  }

  Future<void> _createPost(PostModel post, Emitter<PostState> emit) async {
    try {
      emit(state.copyWith(status: PostStatus.loading));
      await _postUseCase.createPost(post);
      add(const PostEvent.getPosts()); // reload list
    } catch (e) {
      emit(
        state.copyWith(status: PostStatus.failure, errorMessage: e.toString()),
      );
    }
  }

  Future<void> _deletePost(String id, Emitter<PostState> emit) async {
    try {
      emit(state.copyWith(status: PostStatus.loading));
      await _postUseCase.deletePost(id);
      add(const PostEvent.getPosts()); // reload list
    } catch (e) {
      emit(
        state.copyWith(status: PostStatus.failure, errorMessage: e.toString()),
      );
    }
  }
}
