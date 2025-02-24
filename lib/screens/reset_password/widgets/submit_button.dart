import 'package:eonify/assets/resources/resources.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SubmitButton extends StatefulWidget {
  const SubmitButton({super.key});

  @override
  State<SubmitButton> createState() => _SubmitButtonState();
}

class _SubmitButtonState extends State<SubmitButton>
    with SingleTickerProviderStateMixin {
  late final _animationController = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 2000),
  );
  bool _isAnimating = false;

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void _onTap() {
    if (_animationController.isAnimating) {
      _animationController.stop();
      setState(() {
        _isAnimating = false;
      });
      return;
    }
    _animationController.repeat();
    setState(() {
      _isAnimating = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: _onTap,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          AnimatedSize(
            duration: const Duration(milliseconds: 150),
            curve: Curves.easeInOut,
            child: _isAnimating
                ? Row(
                    children: [
                      RotationTransition(
                        turns: _animationController,
                        child: SvgPicture.asset(
                          SvgIcons.loading,
                          colorFilter:
                              ColorFilter.mode(Colors.white, BlendMode.srcIn),
                        ),
                      ),
                      const SizedBox(width: 12.0),
                    ],
                  )
                : SizedBox(),
          ),
          //Text(_isAnimating ? 'Submitting...' : 'Submit'),
          Text('Submit'),
          AnimatedSize(
            duration: const Duration(milliseconds: 150),
            curve: Curves.easeInOut,
            child: _isAnimating ? Text('ting...') : SizedBox(),
          ),
        ],
      ),
    );
  }
}
