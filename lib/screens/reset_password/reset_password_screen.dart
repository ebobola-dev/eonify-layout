import 'package:eonify/common/wigdets/page_indicator.dart';
import 'package:eonify/screens/reset_password/sub_pages/enter_otp.dart';
import 'package:eonify/screens/reset_password/sub_pages/forget_password.dart';
import 'package:eonify/screens/reset_password/sub_pages/reset_password_sp.dart';
import 'package:flutter/material.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({super.key});

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  final PageController _pageController = PageController();

  int _activePageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 24.0, left: 8.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: Icon(Icons.arrow_back),
                  padding: EdgeInsets.zero,
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const SizedBox(height: 32.0),
                    Center(
                      child: PageIndicator(
                        pageCount: 3,
                        activeIndex: _activePageIndex,
                      ),
                    ),
                    const SizedBox(height: 35.0),
                    Flexible(
                      child: PageView(
                        controller: _pageController,
                        physics: NeverScrollableScrollPhysics(),
                        clipBehavior: Clip.none,
                        onPageChanged: (value) => setState(() {
                          _activePageIndex = value;
                        }),
                        children: [
                          ForgetPasswordSubPage(
                            onContinueTap: () => _pageController.animateToPage(
                              1,
                              duration: const Duration(milliseconds: 200),
                              curve: Curves.easeInOut,
                            ),
                          ),
                          EnterOTPSubPage(
                            onResetPasswordTap: () =>
                                _pageController.animateToPage(
                              2,
                              duration: const Duration(milliseconds: 200),
                              curve: Curves.easeInOut,
                            ),
                          ),
                          ResetPasswordSubPage(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
