import 'package:eonify/assets/colors/colors.dart';
import 'package:eonify/assets/resources/resources.dart';
import 'package:eonify/common/wigdets/square_image_wrapper.dart';
import 'package:eonify/screens/reset_password/widgets/otp_field.dart';
import 'package:flutter/material.dart';

class EnterOTPSubPage extends StatelessWidget {
  final VoidCallback onResetPasswordTap;
  const EnterOTPSubPage({super.key, required this.onResetPasswordTap});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(height: 35.0),
          SquareImageWrapper(imagePath: Images.letter),
          const SizedBox(height: 32.0),
          Text(
            'Enter OTP',
            textAlign: TextAlign.center,
            style: textTheme.titleMedium!.copyWith(color: Primary.t600),
          ),
          const SizedBox(height: 16.0),
          Text(
            'Enter the OTP code we just sent you on your registered Email/Phone number',
            textAlign: TextAlign.center,
            style: textTheme.bodyMedium!.copyWith(color: Grey.t700),
          ),
          const SizedBox(height: 24.0),
          Row(
            children: [
              Flexible(child: OtpField()),
              const SizedBox(width: 16.0),
              Flexible(child: OtpField()),
              const SizedBox(width: 16.0),
              Flexible(child: OtpField()),
              const SizedBox(width: 16.0),
              Flexible(child: OtpField()),
              const SizedBox(width: 16.0),
              Flexible(child: OtpField()),
            ],
          ),
          const SizedBox(height: 52.0),
          ElevatedButton(
            onPressed: onResetPasswordTap,
            child: Text('Reset Password'),
          ),
          const SizedBox(height: 16.0),
          Align(
            alignment: Alignment.centerLeft,
            child: RichText(
              textAlign: TextAlign.start,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'Didn’t get OTP? ',
                    style: textTheme.bodyMedium!.copyWith(color: Grey.t800),
                  ),
                  TextSpan(
                    text: 'Resend OTP',
                    style: textTheme.bodyMedium!.copyWith(color: Primary.t500),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
