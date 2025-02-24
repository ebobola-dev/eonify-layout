import 'package:eonify/assets/colors/colors.dart';
import 'package:flutter/material.dart';

class TermsPolicyAgreement extends StatelessWidget {
  final bool agreement;
  final void Function(bool?) onChanged;
  const TermsPolicyAgreement(
      {super.key, required this.agreement, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    final blackStyle = Theme.of(context).textTheme.bodySmall!;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 24.0,
          height: 24.0,
          child: Checkbox(
            value: agreement,
            onChanged: onChanged,
          ),
        ),
        const SizedBox(width: 14.0),
        Flexible(
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'I’m agree to The ',
                  style: blackStyle.copyWith(color: Grey.t800),
                ),
                TextSpan(
                  text: 'Terms of Service',
                  style: blackStyle.copyWith(color: Primary.t500),
                ),
                TextSpan(
                  text: ' and ',
                  style: blackStyle.copyWith(color: Grey.t800),
                ),
                TextSpan(
                  text: 'Privacy Policy',
                  style: blackStyle.copyWith(color: Primary.t500),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
