import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:locket_clone/domain/entities/enum/language.dart';

part 'language_state.freezed.dart';

@freezed
abstract class LanguageState with _$LanguageState {
  const factory LanguageState({
    @Default(Languages.vi) LanguageApp currentLanguage,
  }) = _LanguageState;
}
