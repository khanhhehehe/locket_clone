import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:locket_clone/domain/entities/enum/language.dart';
import 'package:locket_clone/presentation/bloc/language/language_state.dart';

@lazySingleton
class LanguageCubit extends Cubit<LanguageState> {
  LanguageCubit() : super(const LanguageState());

  changeLanguage(String language) {
    switch (language) {
      case 'vi':
        emit(state.copyWith(currentLanguage: Languages.vi));
      case 'en':
        emit(state.copyWith(currentLanguage: Languages.en));
      default:
        emit(state.copyWith(currentLanguage: Languages.en));
    }
  }
}
