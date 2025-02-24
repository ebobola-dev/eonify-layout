import 'package:eonify/assets/colors/colors.dart';
import 'package:eonify/assets/resources/resources.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FacebookGoogleButtons extends StatelessWidget {
  const FacebookGoogleButtons({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Row(
      children: [
        Expanded(
          child: OutlinedButton(
            onPressed: () {},
            child: Row(
              children: [
                SvgPicture.asset(SvgIcons.facebook),
                const SizedBox(width: 16.0),
                Text(
                  'Facebook',
                  style: textTheme.displayLarge!.copyWith(
                    color: Grey.t700,
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(width: 20.0),
        Expanded(
          child: OutlinedButton(
            onPressed: () {},
            child: Row(
              children: [
                SvgPicture.asset(SvgIcons.google),
                const SizedBox(width: 16.0),
                Text(
                  'Google',
                  style: textTheme.displayLarge!.copyWith(
                    color: Grey.t700,
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
