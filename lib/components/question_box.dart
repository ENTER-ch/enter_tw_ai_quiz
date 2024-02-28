import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class QuestionBox extends StatelessWidget {
  final String questionText;
  final String? subtitle;

  const QuestionBox({
    super.key,
    this.questionText = "",
    this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset('assets/svg/question_box_bg.svg'),
        Positioned.fill(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 320.sp,
              vertical: 16.sp,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AutoSizeText(
                  questionText,
                  style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                        color: Colors.white,
                      ),
                  textAlign: TextAlign.center,
                ),
                if (subtitle != null)
                  Padding(
                    padding: EdgeInsets.only(top: 24.sp),
                    child: AutoSizeText(
                      subtitle!,
                      style:
                          Theme.of(context).textTheme.headlineMedium?.copyWith(
                                color: Colors.white,
                                fontSize: 32.sp,
                              ),
                      textAlign: TextAlign.center,
                    ),
                  ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
