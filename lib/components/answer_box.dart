import 'package:auto_size_text/auto_size_text.dart';
import 'package:enter_quiz/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class AnswerBox extends HookWidget {
  final double? leftPadding;
  final double? rightPadding;

  final String? answerLetter;
  final String answerText;

  final void Function()? onTap;
  final Color? highlightColor;

  const AnswerBox({
    super.key,
    this.leftPadding,
    this.rightPadding,
    this.answerLetter,
    this.answerText = "ML ermöglicht Computern, aus Beispielen zu lernen",
    this.highlightColor,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final isPressed = useState(false);

    return Row(
      children: [
        _buildLeftDivider(),
        GestureDetector(
          onTapDown: (_) {
            isPressed.value = true;
          },
          onTapUp: (_) {
            isPressed.value = false;
          },
          onTapCancel: () {
            isPressed.value = false;
          },
          onTap: onTap,
          child: Stack(
            children: [
              SvgPicture.asset(
                'assets/svg/answer_box_bg.svg',
                color: highlightColor ??
                    (isPressed.value ? EnterThemeColors.blue : null),
              ),
              Positioned.fill(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    if (answerLetter != null)
                      Padding(
                        padding: EdgeInsets.only(
                          left: 48.sp,
                        ),
                        child: Text(
                          "$answerLetter:",
                          style:
                              Theme.of(context).textTheme.labelLarge?.copyWith(
                                    color: EnterThemeColors.orange,
                                  ),
                        ),
                      )
                    else
                      SizedBox(width: 40.sp),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: AutoSizeText(
                          answerText,
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge
                              ?.copyWith(color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 40.sp,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        _buildRightDivider(),
      ],
    );
  }

  Widget _buildDivider() {
    return Divider(
      thickness: 4.sp,
      color: Colors.white,
    );
  }

  Widget _buildLeftDivider() {
    if (leftPadding != null) {
      return SizedBox(
        width: leftPadding,
        child: _buildDivider(),
      );
    } else {
      return Expanded(
        child: _buildDivider(),
      );
    }
  }

  Widget _buildRightDivider() {
    if (rightPadding != null) {
      return SizedBox(
        width: rightPadding,
        child: _buildDivider(),
      );
    } else {
      return Expanded(
        child: _buildDivider(),
      );
    }
  }
}
