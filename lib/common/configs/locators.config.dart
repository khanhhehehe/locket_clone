// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../../data/repositories/post_repository_implement.dart' as _i865;
import '../../data/services/post_service_implement.dart' as _i705;
import '../../data/usecase/post_usecase_implement.dart' as _i637;
import '../../domain/repositories/post_repository.dart' as _i856;
import '../../domain/services/post_service.dart' as _i387;
import '../../domain/usecase/post_usecase.dart' as _i687;
import '../../presentation/bloc/language/language_cubit.dart' as _i769;
import '../../presentation/bloc/post/post_bloc.dart' as _i990;
import 'navigation.dart' as _i431;
import 'router.dart' as _i216;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.lazySingleton<_i431.AppNavigation>(() => _i431.AppNavigation());
    gh.lazySingleton<_i216.AppRouters>(() => _i216.AppRouters());
    gh.lazySingleton<_i769.LanguageCubit>(() => _i769.LanguageCubit());
    gh.lazySingleton<_i387.PostService>(() => _i705.PostServiceImp());
    gh.lazySingleton<_i856.PostRepository>(() => _i865.PostRepositoryImp());
    gh.lazySingleton<_i687.PostUseCase>(() => _i637.PostUseCaseImp());
    gh.lazySingleton<_i990.PostBloc>(
      () => _i990.PostBloc(gh<_i687.PostUseCase>()),
    );
    return this;
  }
}
