import 'package:enter_quiz/models/question.dart';
import 'package:excel/excel.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'quiz.freezed.dart';
part 'quiz.g.dart';

@freezed
class Quiz with _$Quiz {
  factory Quiz({
    @Default([]) List<Question> questions,
  }) = _Quiz;

  Quiz._();

  factory Quiz.fromJson(Map<String, dynamic> json) => _$QuizFromJson(json);

  factory Quiz.fromExcel(Sheet table) {
    final numQuestions = table.maxRows - 1;
    final questions = <Question>[];

    const answerIndexes = ['A', 'B', 'C', 'D'];

    for (var i = 1; i <= numQuestions; i++) {
      final question = table
          .cell(CellIndex.indexByColumnRow(rowIndex: i, columnIndex: 0))
          .value
          .toString()
          .trim();

      final helpScreenTitle = table
          .cell(CellIndex.indexByColumnRow(rowIndex: i, columnIndex: 6))
          .value
          .toString()
          .trim();

      final helpScreenText = table
          .cell(CellIndex.indexByColumnRow(rowIndex: i, columnIndex: 7))
          .value
          .toString()
          .trim();

      final imageName = table
          .cell(CellIndex.indexByColumnRow(rowIndex: i, columnIndex: 8))
          .value
          .toString();
      final image = imageName.isNotEmpty ? imageName : null;

      final answers = <String>[];

      for (var j = 1; j <= 4; j++) {
        final answer = table
            .cell(CellIndex.indexByColumnRow(rowIndex: i, columnIndex: j))
            .value;

        if (answer != null) {
          answers.add(answer.toString().trim());
        }
      }

      final correctAnswer = table
          .cell(CellIndex.indexByColumnRow(rowIndex: i, columnIndex: 5))
          .value
          .toString();
      final correctAnswerIndex = answerIndexes.indexOf(correctAnswer);

      if (answers.isNotEmpty && correctAnswerIndex != -1) {
        questions.add(Question(
          questionText: question,
          answers: answers,
          correctAnswerIndex: correctAnswerIndex,
          helpScreenTitle: helpScreenTitle,
          helpScreenText: helpScreenText,
          image: image,
        ));
      }
    }

    return Quiz(
      questions: questions,
    );
  }
}
