import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:locket_clone/common/configs/locators.dart';
import 'package:locket_clone/presentation/bloc/language/language_cubit.dart';
import 'package:locket_clone/presentation/bloc/post/post_bloc.dart';

class MainBloc {
  static List<BlocProvider> allBlocs() => [
    BlocProvider<LanguageCubit>(create: (_) => getIt<LanguageCubit>()),
    BlocProvider<PostBloc>(create: (_) => getIt<PostBloc>()),
  ];
}
