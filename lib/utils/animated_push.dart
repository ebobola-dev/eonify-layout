import 'package:flutter/material.dart';

class AnimatedPush {
  final BuildContext context;
  final Widget page;
  final bool _clearNavigator;
  final Duration transitionDuration;

  const AnimatedPush({
    required this.context,
    required this.page,
    this.transitionDuration = const Duration(milliseconds: 150),
  }) : _clearNavigator = false;

  const AnimatedPush.clearNavigator({
    required this.context,
    required this.page,
    this.transitionDuration = const Duration(milliseconds: 150),
  }) : _clearNavigator = true;

  void _push(PageRouteBuilder route) {
    if (_clearNavigator) {
      Navigator.of(context).pushAndRemoveUntil(route, (r) => false);
      return;
    }
    Navigator.of(context).push(route);
  }

  void slide(Offset start, Offset end) {
    final route = PageRouteBuilder(
      transitionDuration: transitionDuration,
      reverseTransitionDuration: transitionDuration,
      pageBuilder: (context, animation, secondaryAnimation) {
        final tween = Tween<Offset>(
          begin: start,
          end: end,
        );
        return SlideTransition(
          position: animation.drive(tween),
          child: page,
        );
      },
    );
    _push(route);
  }

  void scale() {
    final route = PageRouteBuilder(
      transitionDuration: Duration(milliseconds: 150),
      reverseTransitionDuration: Duration(milliseconds: 150),
      pageBuilder: (context, animation, secondaryAnimation) {
        return ScaleTransition(
          scale: animation,
          child: page,
        );
      },
    );
    _push(route);
  }
}
