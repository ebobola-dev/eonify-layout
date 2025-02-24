import 'package:eonify/assets/colors/colors.dart';
import 'package:flutter/material.dart';

class PageIndicator extends StatelessWidget {
  final int pageCount;
  final int activeIndex;
  const PageIndicator({
    super.key,
    required this.pageCount,
    this.activeIndex = 0,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 4.0,
      child: ListView.separated(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: pageCount,
        separatorBuilder: (context, index) => const SizedBox(width: 12.0),
        itemBuilder: (context, index) => AnimatedContainer(
          duration: Duration(milliseconds: 170),
          curve: Curves.easeInOut,
          width: 32.0,
          height: 4.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(2.0),
            color: activeIndex == index ? Primary.t400 : Primary.t100,
          ),
        ),
      ),
    );
  }
}
