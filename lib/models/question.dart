import 'package:freezed_annotation/freezed_annotation.dart';

part 'question.freezed.dart';
part 'question.g.dart';

@freezed
class Question with _$Question {
  const factory Question({
    required String questionText,
    required List<String> answers,
    required int correctAnswerIndex,
    String? helpScreenTitle,
    String? helpScreenText,
    String? image,
  }) = _Question;

  factory Question.fromJson(Map<String, dynamic> json) =>
      _$QuestionFromJson(json);
}
