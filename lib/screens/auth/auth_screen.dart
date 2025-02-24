import 'package:eonify/assets/colors/colors.dart';
import 'package:eonify/assets/resources/resources.dart';
import 'package:eonify/common/wigdets/square_image_wrapper.dart';
import 'package:eonify/models/auth_type.dart';
import 'package:eonify/screens/auth/widgets/auth_form.dart';
import 'package:eonify/screens/auth/widgets/facebook_google_buttons.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  AuthType _currentAuthType = AuthType.signUp;

  void _switchAuthType() {
    if (_currentAuthType == AuthType.signUp) {
      setState(() {
        _currentAuthType = AuthType.signIn;
      });
      return;
    }
    setState(() {
      _currentAuthType = AuthType.signUp;
    });
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Center(child: SquareImageWrapper(imagePath: Images.claps)),
                const SizedBox(height: 30.0),
                Text(
                  _currentAuthType == AuthType.signUp ? 'Sign Up' : 'Sign In',
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
                FacebookGoogleButtons(),
                const SizedBox(height: 16.0),
                Row(
                  children: [
                    Expanded(child: Divider()),
                    const SizedBox(width: 11.0),
                    Text(
                      'Or',
                      style: textTheme.bodyMedium!.copyWith(color: Grey.t900),
                    ),
                    const SizedBox(width: 11.0),
                    Expanded(child: Divider()),
                  ],
                ),
                const SizedBox(height: 16.0),
                AuthForm(authType: _currentAuthType),
                const SizedBox(height: 32.0),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      _currentAuthType == AuthType.signUp
                          ? 'Create Account'
                          : 'Log In',
                    ),
                  ),
                ),
                const SizedBox(height: 16.0),
                Align(
                  alignment: Alignment.centerLeft,
                  child: RichText(
                    textAlign: TextAlign.start,
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: _currentAuthType == AuthType.signUp
                              ? 'Do you have account? '
                              : 'Don’t have account? ',
                          style:
                              textTheme.bodyMedium!.copyWith(color: Grey.t800),
                        ),
                        TextSpan(
                          text: _currentAuthType == AuthType.signUp
                              ? 'Sign In'
                              : 'Sign Up',
                          style: textTheme.bodyMedium!
                              .copyWith(color: Primary.t500),
                          recognizer: TapGestureRecognizer()
                            ..onTap = _switchAuthType,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
