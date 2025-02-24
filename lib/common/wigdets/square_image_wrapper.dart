import 'package:eonify/assets/colors/colors.dart';
import 'package:flutter/material.dart';

class SquareImageWrapper extends StatelessWidget {
  final String imagePath;
  const SquareImageWrapper({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 90.0,
        height: 90.0,
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: Primary.t100,
          borderRadius: BorderRadius.circular(25.0),
        ),
        child: Image.asset(imagePath),
      ),
    );
  }
}
