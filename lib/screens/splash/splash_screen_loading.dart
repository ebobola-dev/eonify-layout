import 'package:eonify/assets/resources/resources.dart';
import 'package:eonify/screens/splash/splash_screen.dart';
import 'package:eonify/utils/animated_push.dart';
import 'package:flutter/material.dart';

class SplashScreenLoading extends StatefulWidget {
  const SplashScreenLoading({super.key});

  @override
  State<SplashScreenLoading> createState() => _SplashScreenLoadingState();
}

class _SplashScreenLoadingState extends State<SplashScreenLoading> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await Future.delayed(const Duration(seconds: 3));
      AnimatedPush.clearNavigator(
        // ignore: use_build_context_synchronously
        context: context,
        page: SplashScreen(),
      ).slide(
        Offset(0, -1),
        Offset(0, 0),
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                Images.logo,
                width: MediaQuery.of(context).size.width * 0.44,
              ),
              const SizedBox(height: 32.0),
              Text(
                'Econify',
                style: Theme.of(context)
                    .textTheme
                    .titleMedium!
                    .copyWith(color: Theme.of(context).colorScheme.primary),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
