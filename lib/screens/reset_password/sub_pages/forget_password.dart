import 'package:eonify/assets/colors/colors.dart';
import 'package:eonify/assets/resources/resources.dart';
import 'package:eonify/common/wigdets/my_text_field.dart';
import 'package:eonify/common/wigdets/square_image_wrapper.dart';
import 'package:flutter/material.dart';

class ForgetPasswordSubPage extends StatelessWidget {
  final VoidCallback onContinueTap;
  const ForgetPasswordSubPage({super.key, required this.onContinueTap});

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
            'Forget Password',
            textAlign: TextAlign.center,
            style: textTheme.titleMedium!.copyWith(color: Primary.t600),
          ),
          const SizedBox(height: 16.0),
          Text(
            'It was popularised in the 1960s with the release of Letraset sheetscontaining Lorem Ipsum.',
            textAlign: TextAlign.center,
            style: textTheme.bodyMedium!.copyWith(color: Grey.t700),
          ),
          const SizedBox(height: 24.0),
          MyTextField(
            label: Text(
              'Email I’D/ Mobile Number',
            ),
            maxLines: 1,
          ),
          const SizedBox(height: 32.0),
          ElevatedButton(
            onPressed: onContinueTap,
            child: Text('Continue'),
          ),
        ],
      ),
    );
  }
}
