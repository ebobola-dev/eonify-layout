import 'package:eonify/assets/colors/colors.dart';
import 'package:eonify/assets/resources/resources.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dart:math' as math;

class PasswordEyeButton extends StatelessWidget {
  final VoidCallback onTap;
  final bool isCrossed;
  final bool fieldIsFocused;
  const PasswordEyeButton({
    super.key,
    required this.onTap,
    required this.isCrossed,
    required this.fieldIsFocused,
  });

  @override
  Widget build(BuildContext context) {
    final color = fieldIsFocused ? Grey.t800 : Grey.t600;
    return SizedBox(
      width: 48.0,
      height: 48.0,
      child: Stack(
        children: [
          IconButton(
            onPressed: onTap,
            icon: SvgPicture.asset(
              SvgIcons.eye,
              width: 24.0,
              height: 24.0,
              colorFilter: ColorFilter.mode(
                color,
                BlendMode.srcIn,
              ),
            ),
          ),
          Align(
            child: Transform.rotate(
              angle: math.pi / 4,
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 150),
                curve: Curves.easeInOut,
                width: isCrossed ? 32.0 : 0.0,
                height: 2.0,
                decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.circular(2.0),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
