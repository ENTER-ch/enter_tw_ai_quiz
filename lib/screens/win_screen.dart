import 'dart:async';

import 'package:enter_quiz/components/question_box.dart';
import 'package:enter_quiz/components/quiz_background.dart';
import 'package:enter_quiz/providers/language_provider.dart';
import 'package:enter_quiz/providers/quiz_settings_provider.dart';
import 'package:enter_quiz/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class WinScreen extends HookConsumerWidget {
  const WinScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final settings = ref.watch(quizSettingsProvider);
    final language = ref.watch(languageProvider);

    useEffect(() {
      final timer = Timer(const Duration(seconds: 5), () {
        ref.invalidate(languageProvider);
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) {
            return const HomeScreen();
          }),
          (route) => false,
        );
      });
      return timer.cancel;
    }, const []);

    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          const QuizBackground(),
          Positioned(
            bottom: 256.sp,
            left: 0,
            right: 0,
            child: Column(
              children: [
                QuestionBox(
                  questionText: settings.winTitle[language] ?? "",
                  subtitle: settings.winSubtitle[language],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
