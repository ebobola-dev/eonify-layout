import 'package:eonify/assets/colors/colors.dart';
import 'package:eonify/common/wigdets/my_text_field.dart';
import 'package:eonify/models/auth_type.dart';
import 'package:eonify/screens/auth/widgets/password_eye_button.dart';
import 'package:eonify/screens/auth/widgets/terms_policy_agreement.dart';
import 'package:eonify/screens/reset_password/reset_password_screen.dart';
import 'package:eonify/utils/animated_push.dart';
import 'package:flutter/material.dart';

class AuthForm extends StatefulWidget {
  final AuthType authType;
  const AuthForm({super.key, required this.authType});

  @override
  State<AuthForm> createState() => _AuthFormState();
}

class _AuthFormState extends State<AuthForm> {
  final _nameController = TextEditingController();
  final _emailPhoneController = TextEditingController();
  final _passwordController = TextEditingController();

  final FocusNode _nameFocus = FocusNode();
  final FocusNode _emailPhoneFocus = FocusNode();
  final FocusNode _passwordFocus = FocusNode();

  bool _passwordIsVisible = false;
  bool _passwordFieldIsFocused = false;
  bool _agreement = false;

  @override
  void initState() {
    _passwordFocus.addListener(_passwordFocusListener);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _passwordFocus.removeListener(_passwordFocusListener);
    _passwordFocus.dispose();
  }

  void _onPasswordEyeButtonTap() {
    setState(() {
      _passwordIsVisible = !_passwordIsVisible;
    });
  }

  void _passwordFocusListener() => setState(() {
        _passwordFieldIsFocused = _passwordFocus.hasFocus;
      });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AnimatedSize(
          duration: const Duration(milliseconds: 150),
          curve: Curves.easeInOut,
          child: widget.authType == AuthType.signUp
              ? MyTextField(
                  controller: _nameController,
                  label: Text('Name'),
                  maxLines: 1,
                  focusNode: _nameFocus,
                  textInputAction: TextInputAction.next,
                )
              : SizedBox(),
        ),
        const SizedBox(height: 16.0),
        MyTextField(
          controller: _emailPhoneController,
          label: Text('Email/Phone Number'),
          maxLines: 1,
          focusNode: _emailPhoneFocus,
          textInputAction: TextInputAction.next,
        ),
        const SizedBox(height: 16.0),
        MyTextField(
          controller: _passwordController,
          label: Text('Password'),
          maxLines: 1,
          focusNode: _passwordFocus,
          hideContent: !_passwordIsVisible,
          textInputAction: TextInputAction.done,
          suffix: PasswordEyeButton(
            onTap: _onPasswordEyeButtonTap,
            isCrossed: !_passwordIsVisible,
            fieldIsFocused: _passwordFieldIsFocused,
          ),
        ),
        const SizedBox(height: 12.0),
        if (widget.authType == AuthType.signUp)
          TermsPolicyAgreement(
            agreement: _agreement,
            onChanged: (v) => setState(() {
              _agreement = v!;
            }),
          )
        else
          Align(
            alignment: Alignment.centerRight,
            child: SizedBox(
              height: 32.0,
              child: TextButton(
                onPressed: () {
                  AnimatedPush(
                    context: context,
                    page: ResetPasswordScreen(),
                  ).scale();
                },
                child: Text(
                  'Forget Password?',
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall!
                      .copyWith(color: Grey.t600),
                ),
              ),
            ),
          ),
      ],
    );
  }
}
