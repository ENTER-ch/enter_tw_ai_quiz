import 'package:enter_quiz/components/continuous_animated_rotation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class QuizBackground extends StatelessWidget {
  final bool hideBadge;

  const QuizBackground({
    super.key,
    this.hideBadge = false,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        SvgPicture.asset('assets/svg/background.svg'),
        _buildIconBackground(),
        Positioned(
          left: 32.sp,
          bottom: 32.sp,
          child: SvgPicture.asset(
            'assets/svg/fhnw-ht-logo.svg',
            color: Colors.white,
            height: 48.sp,
          ),
        ),
        if (!hideBadge)
          Positioned(
            top: 32.sp,
            child: _buildBadge(),
          ),
      ],
    );
  }

  Widget _buildBadge() {
    return Stack(
      alignment: Alignment.center,
      children: [
        SvgPicture.asset('assets/svg/badge_bg.svg'),
        ContinuousAnimatedRotation(
          duration: const Duration(milliseconds: 30000),
          isClockwise: false,
          child: SvgPicture.asset('assets/svg/badge_fg.svg'),
        ),
      ],
    );
  }

  Widget _buildIconBackground() {
    return UnconstrainedBox(
      clipBehavior: Clip.hardEdge,
      child: ContinuousAnimatedRotation(
        duration: const Duration(milliseconds: 30000),
        child: SvgPicture.asset(
          'assets/svg/enter_icon.svg',
          color: Colors.white.withOpacity(0.05),
          height: 1440.sp,
        ),
      ),
    );
  }
}
