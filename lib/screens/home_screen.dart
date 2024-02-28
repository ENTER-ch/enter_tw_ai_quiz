import 'package:enter_quiz/components/action_box.dart';
import 'package:enter_quiz/components/answer_box.dart';
import 'package:enter_quiz/components/question_box.dart';
import 'package:enter_quiz/components/quiz_background.dart';
import 'package:enter_quiz/providers/language_provider.dart';
import 'package:enter_quiz/providers/quiz_settings_provider.dart';
import 'package:enter_quiz/screens/question_screen.dart';
import 'package:enter_quiz/utils/my_page_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final settings = ref.watch(quizSettingsProvider);
    final language = ref.watch(languageProvider);

    startQuiz() {
      Navigator.push(context, MyPageRoute(builder: (context) {
        return const QuestionScreen();
      }));
    }

    return Stack(
      children: [
        //const QuizBackground(),
        Positioned(
          bottom: 128.sp,
          left: 0,
          right: 0,
          child: Column(
            children: [
              ActionBox(
                inset: 256.sp,
                label: language,
                onPressed: () {
                  ref.read(languageProvider.notifier).nextLanguage();
                },
              ),
              SizedBox(height: 32.sp),
              QuestionBox(
                questionText: settings.quizTitle[language] ?? "",
                subtitle: settings.quizSubtitle[language],
              ),
              SizedBox(height: 32.sp),
              AnswerBox(
                answerText: "Start",
                onTap: startQuiz,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
