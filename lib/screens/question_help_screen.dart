import 'package:auto_size_text/auto_size_text.dart';
import 'package:enter_quiz/components/action_box.dart';
import 'package:enter_quiz/components/quiz_background.dart';
import 'package:enter_quiz/providers/quiz_provider.dart';
import 'package:enter_quiz/providers/storage_provider.dart';
import 'package:enter_quiz/providers/strings_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class QuestionHelpScreen extends ConsumerWidget {
  final int questionIndex;

  const QuestionHelpScreen({
    super.key,
    this.questionIndex = 0,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final $t = ref.watch(intlStringsProvider);
    final quiz = ref.watch(currentQuizProvider);
    final question = quiz.questions[questionIndex];

    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          const QuizBackground(
            hideBadge: true,
          ),
          Positioned(
            top: 64.sp,
            bottom: 64.sp,
            right: 0,
            left: 0,
            child: Column(
              children: [
                Row(
                  children: [
                    ActionBox(
                      inset: 256.sp,
                      label: $t["back"] ?? "",
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
                SizedBox(
                  height: 32.sp,
                ),
                HelpBox(
                  title: question.helpScreenTitle ?? "",
                  body: question.helpScreenText ?? "",
                  image: question.image,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class HelpBox extends ConsumerWidget {
  final String title;
  final String body;
  final String? image;

  const HelpBox({
    super.key,
    this.title = "",
    this.body = "",
    this.image,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final imageFile = ref.watch(imageFileProvider(image));

    return Stack(
      children: [
        SvgPicture.asset(
          'assets/svg/help_box_bg.svg',
        ),
        Positioned.fill(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 64.sp,
                  vertical: 40.sp,
                ),
                child: AutoSizeText(
                  title,
                  style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                        color: Colors.white,
                      ),
                  textAlign: TextAlign.center,
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 32.sp,
                    right: 32.sp,
                    bottom: 64.sp,
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Markdown(
                          data: body,
                          styleSheet: MarkdownStyleSheet(
                            p: Theme.of(context).textTheme.bodySmall?.copyWith(
                                  color: Colors.white,
                                ),
                            listBullet:
                                Theme.of(context).textTheme.bodySmall?.copyWith(
                                      color: Colors.white,
                                    ),
                            h1: Theme.of(context)
                                .textTheme
                                .headlineSmall
                                ?.copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                ),
                            h2: Theme.of(context)
                                .textTheme
                                .headlineSmall
                                ?.copyWith(
                                  color: Colors.white,
                                  fontSize: 32.sp,
                                  fontWeight: FontWeight.w700,
                                ),
                            h3: Theme.of(context)
                                .textTheme
                                .headlineSmall
                                ?.copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                ),
                            code: TextStyle(
                              fontSize: 16.sp,
                              color: Colors.white,
                              backgroundColor: Colors.transparent,
                            ),
                            codeblockDecoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.5),
                              borderRadius: BorderRadius.circular(16.sp),
                            ),
                            blockquoteDecoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.5),
                              borderRadius: BorderRadius.circular(16.sp),
                            ),
                            blockquotePadding: EdgeInsets.all(32.sp),
                          ),
                        ),
                      ),
                      if (imageFile.hasValue)
                        imageFile.maybeWhen(
                          data: (file) => file != null
                              ? Image.file(
                                  file,
                                  fit: BoxFit.contain,
                                )
                              : const SizedBox.shrink(),
                          orElse: () => const SizedBox.shrink(),
                        ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
