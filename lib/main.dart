import 'package:eonify/assets/theme/app_theme.dart';
import 'package:eonify/screens/splash/splash_screen_loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    return MaterialApp(
      title: 'Eonify',
      debugShowCheckedModeBanner: false,
      theme: appTheme,
      home: SplashScreenLoading(),
    );
  }
}
