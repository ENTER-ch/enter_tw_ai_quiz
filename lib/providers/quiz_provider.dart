import 'package:enter_quiz/models/quiz.dart';
import 'package:enter_quiz/providers/language_provider.dart';
import 'package:enter_quiz/providers/quiz_settings_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'quiz_provider.g.dart';

@riverpod
Quiz currentQuiz(CurrentQuizRef ref) {
  final settings = ref.watch(quizSettingsProvider);
  final language = ref.watch(languageProvider);
  return settings.quizLanguages[language]!;
}
