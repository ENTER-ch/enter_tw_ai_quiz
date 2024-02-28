import 'package:enter_quiz/providers/quiz_settings_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'language_provider.g.dart';

@riverpod
class Language extends _$Language {
  @override
  String build() {
    final languages = ref.read(quizSettingsProvider).languages;
    return languages.first;
  }

  void changeLanguage(String language) {
    state = language;
  }

  void nextLanguage() {
    final languages = ref.read(quizSettingsProvider).languages;
    final currentIndex = languages.indexOf(state);
    final nextIndex = (currentIndex + 1) % languages.length;
    state = languages[nextIndex];
  }
}
