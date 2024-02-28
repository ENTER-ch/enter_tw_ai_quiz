import 'package:enter_quiz/components/action_box.dart';
import 'package:enter_quiz/components/answer_box.dart';
import 'package:enter_quiz/components/question_box.dart';
import 'package:enter_quiz/components/quiz_background.dart';
import 'package:enter_quiz/providers/quiz_provider.dart';
import 'package:enter_quiz/providers/strings_provider.dart';
import 'package:enter_quiz/screens/question_help_screen.dart';
import 'package:enter_quiz/screens/win_screen.dart';
import 'package:enter_quiz/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class QuestionScreen extends HookConsumerWidget {
  final int questionIndex;

  const QuestionScreen({
    super.key,
    this.questionIndex = 0,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final $t = ref.watch(intlStringsProvider);
    final quiz = ref.watch(currentQuizProvider);
    final question = quiz.questions[questionIndex];

    final selectedAnswer = useState<int?>(null);
    final showCorrectAnswer = useState(false);

    void selectAnswer(int index) {
      // If the correct answer is already shown, don't allow selecting a new answer
      if (showCorrectAnswer.value) {
        return;
      }

      selectedAnswer.value = index;

      Future.delayed(const Duration(seconds: 2), () {
        showCorrectAnswer.value = true;

        Future.delayed(const Duration(seconds: 3), () {
          if (!context.mounted) {
            return;
          }
          if (selectedAnswer.value == question.correctAnswerIndex) {
            // Correct Answer
            if (questionIndex + 1 < quiz.questions.length) {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return QuestionScreen(
                  questionIndex: questionIndex + 1,
                );
              }));
              return;
            }

            // End of Quiz
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const WinScreen();
            }));
          } else {
            // Go Home
            Navigator.popUntil(context, (route) => route.isFirst);
          }
        });
      });
    }

    Color? getHighlightColor(int index) {
      if (selectedAnswer.value == null) {
        return null;
      }

      if (showCorrectAnswer.value) {
        if (index == question.correctAnswerIndex) {
          return EnterThemeColors.green;
        } else if (index == selectedAnswer.value) {
          return EnterThemeColors.red;
        }
      }

      if (index == selectedAnswer.value) {
        return EnterThemeColors.blue;
      }

      return null;
    }

    return Stack(
      children: [
        Positioned(
          bottom: 128.sp,
          right: 0,
          left: 0,
          child: Column(
            children: [
              Row(
                children: [
                  ActionBox(
                    inset: 256.sp,
                    label: $t["help"] ?? "",
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => QuestionHelpScreen(
                          questionIndex: questionIndex,
                        ),
                      ),
                    ),
                  ),
                  const Spacer(),
                  ActionBox(
                    inset: 256.sp,
                    rightSide: true,
                    label: "${questionIndex + 1}",
                  ),
                ],
              ),
              SizedBox(height: 32.sp),
              QuestionBox(
                questionText: question.questionText,
              ),
              SizedBox(height: 32.sp),
              Row(
                children: [
                  Expanded(
                    child: AnswerBox(
                      rightPadding: 32.sp,
                      answerLetter: "A",
                      answerText: question.answers[0],
                      onTap: () => selectAnswer(0),
                      highlightColor: getHighlightColor(0),
                    ),
                  ),
                  Expanded(
                    child: AnswerBox(
                      leftPadding: 32.sp,
                      answerLetter: "B",
                      answerText: question.answers[1],
                      onTap: () => selectAnswer(1),
                      highlightColor: getHighlightColor(1),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 16.sp,
              ),
              Row(
                children: [
                  Expanded(
                    child: AnswerBox(
                      rightPadding: 32.sp,
                      answerLetter: "C",
                      answerText: question.answers[2],
                      onTap: () => selectAnswer(2),
                      highlightColor: getHighlightColor(2),
                    ),
                  ),
                  Expanded(
                    child: AnswerBox(
                      leftPadding: 32.sp,
                      answerLetter: "D",
                      answerText: question.answers[3],
                      onTap: () => selectAnswer(3),
                      highlightColor: getHighlightColor(3),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
