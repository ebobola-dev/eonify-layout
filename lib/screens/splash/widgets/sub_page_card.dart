import 'package:eonify/assets/colors/colors.dart';
import 'package:flutter/material.dart';

class SubPageCard extends StatelessWidget {
  final String text1;
  final String text2;
  final String imagePath;
  final String iconPath;
  final double topPadding;
  const SubPageCard({
    super.key,
    required this.text1,
    required this.text2,
    required this.imagePath,
    required this.iconPath,
    this.topPadding = 16.0,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Column(
      children: [
        SizedBox(height: topPadding),
        Image.asset(
          imagePath,
          width: MediaQuery.of(context).size.width * 0.77,
        ),
        const Spacer(),
        Text(
          text1,
          style: textTheme.titleSmall!.copyWith(color: Grey.white),
        ),
        const SizedBox(height: 8.0),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              text2,
              style: textTheme.displayLarge!.copyWith(
                fontSize: 24.0,
                color: Grey.t200,
              ),
            ),
            Image.asset(
              iconPath,
              height: 50.0,
            ),
          ],
        ),
        const SizedBox(height: 36.0),
        Text(
          'Aenean eu lacinia ligula. Quisque eu risus erat. Aenean placerat sollicitudin lectus.',
          textAlign: TextAlign.center,
          style: textTheme.bodyLarge!.copyWith(color: Grey.t300),
        ),
      ],
    );
  }
}
