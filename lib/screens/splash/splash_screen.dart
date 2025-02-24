import 'package:eonify/assets/colors/colors.dart';
import 'package:eonify/assets/resources/resources.dart';
import 'package:eonify/common/wigdets/page_indicator.dart';
import 'package:eonify/screens/auth/auth_screen.dart';
import 'package:eonify/screens/splash/widgets/sub_page_card.dart';
import 'package:eonify/utils/animated_push.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final _pageController = PageController();
  int _activePageIndex = 0;

  void _onNextTap() {
    if (_activePageIndex == 0) {
      _pageController.animateToPage(
        1,
        duration: const Duration(milliseconds: 400),
        curve: Curves.easeInOut,
      );
    } else {
      AnimatedPush.clearNavigator(
        context: context,
        page: AuthScreen(),
      ).slide(
        Offset(1, 0),
        Offset(0, 0),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Grey.t800,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(22.0),
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.72,
                child: PageView(
                  controller: _pageController,
                  onPageChanged: (value) {
                    setState(() {
                      _activePageIndex = value;
                    });
                  },
                  children: [
                    SubPageCard(
                      text1: 'The Simple Way to',
                      text2: 'find the best!',
                      imagePath: Images.saly22,
                      iconPath: Images.ok,
                    ),
                    SubPageCard(
                      text1: 'The Best Design',
                      text2: 'Strategy!',
                      imagePath: Images.saly27,
                      iconPath: Images.handPencil,
                      topPadding: 52.0,
                    ),
                  ],
                ),
              ),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(width: 64.0),
                  PageIndicator(
                    pageCount: 2,
                    activeIndex: _activePageIndex,
                  ),
                  TextButton(
                    onPressed: _onNextTap,
                    child: Text(
                      'Next',
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge!
                          .copyWith(color: Grey.t300),
                    ),
                  ),
                ],
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
