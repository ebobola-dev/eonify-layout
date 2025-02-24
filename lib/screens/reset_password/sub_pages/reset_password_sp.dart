import 'package:eonify/assets/colors/colors.dart';
import 'package:eonify/assets/resources/resources.dart';
import 'package:eonify/common/wigdets/my_text_field.dart';
import 'package:eonify/common/wigdets/square_image_wrapper.dart';
import 'package:eonify/screens/auth/widgets/password_eye_button.dart';
import 'package:eonify/screens/reset_password/widgets/submit_button.dart';
import 'package:flutter/material.dart';

class ResetPasswordSubPage extends StatefulWidget {
  const ResetPasswordSubPage({super.key});

  @override
  State<ResetPasswordSubPage> createState() => _ResetPasswordSubPageState();
}

class _ResetPasswordSubPageState extends State<ResetPasswordSubPage> {
  final _focus1 = FocusNode();
  final _focus2 = FocusNode();
  bool _isVisible1 = false;
  bool _isVisible2 = false;
  bool _isFocused1 = false;
  bool _isFocused2 = false;

  @override
  void initState() {
    _focus1.addListener(_focus1Listener);
    _focus2.addListener(_focus2Listener);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _focus1.removeListener(_focus1Listener);
    _focus2.removeListener(_focus2Listener);
    _focus1.dispose();
    _focus2.dispose();
  }

  void _focus1Listener() => setState(() {
        _isFocused1 = _focus1.hasFocus;
      });

  void _focus2Listener() => setState(() {
        _isFocused2 = _focus2.hasFocus;
      });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(height: 35.0),
          SquareImageWrapper(imagePath: Images.lock),
          const SizedBox(height: 32.0),
          Text(
            'Reset Password',
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
              'Enter a new password',
            ),
            maxLines: 1,
            focusNode: _focus1,
            hideContent: !_isVisible1,
            textInputAction: TextInputAction.next,
            suffix: PasswordEyeButton(
              onTap: () => setState(() {
                _isVisible1 = !_isVisible1;
              }),
              isCrossed: !_isVisible1,
              fieldIsFocused: _isFocused1,
            ),
          ),
          const SizedBox(height: 16.0),
          MyTextField(
            label: Text(
              'Repeat the password',
            ),
            maxLines: 1,
            focusNode: _focus2,
            hideContent: !_isVisible2,
            textInputAction: TextInputAction.done,
            suffix: PasswordEyeButton(
              onTap: () => setState(() {
                _isVisible2 = !_isVisible2;
              }),
              isCrossed: !_isVisible2,
              fieldIsFocused: _isFocused2,
            ),
          ),
          const SizedBox(height: 32.0),
          SubmitButton(),
        ],
      ),
    );
  }
}
