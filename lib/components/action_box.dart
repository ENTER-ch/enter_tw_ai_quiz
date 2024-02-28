import 'package:auto_size_text/auto_size_text.dart';
import 'package:enter_quiz/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class ActionBox extends HookWidget {
  final bool rightSide;
  final double inset;

  final String label;
  final void Function()? onPressed;

  const ActionBox({
    super.key,
    this.rightSide = false,
    this.inset = 0,
    this.label = "",
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    final isPressed = useState(false);

    return Row(
      children: [
        if (!rightSide)
          SizedBox(
            width: inset,
            child: _buildDivider(),
          ),
        GestureDetector(
          onTapDown: (_) {
            if (onPressed != null) {
              isPressed.value = true;
            }
          },
          onTapUp: (_) {
            isPressed.value = false;
          },
          onTapCancel: () {
            isPressed.value = false;
          },
          onTap: () => onPressed?.call(),
          child: Stack(
            children: [
              Transform.flip(
                flipX: rightSide,
                child: SvgPicture.asset(
                  'assets/svg/action_box_bg.svg',
                  color: isPressed.value ? EnterThemeColors.blue : null,
                ),
              ),
              Positioned.fill(
                child: Center(
                  child: AutoSizeText(
                    label,
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          color: Colors.white,
                        ),
                  ),
                ),
              ),
            ],
          ),
        ),
        if (rightSide)
          SizedBox(
            width: inset,
            child: _buildDivider(),
          ),
      ],
    );
  }

  Widget _buildDivider() {
    return Divider(
      thickness: 4.sp,
      color: Colors.white,
    );
  }
}
